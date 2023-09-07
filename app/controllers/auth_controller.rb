class AuthController < ApplicationController

  def sign_up
    # https://firebase.google.com/docs/auth/admin/verify-id-tokens?hl=ja
    return false unless request.headers['Authorization'].present?
    id_token = request.headers['Authorization'].gsub(/Bearer /, '')
    decoded_token = JWT.decode id_token, nil, false
    raise JWT::VerificationError if !decoded_token[0]['email_verified'] && decoded_token[0]['sign_in_provider'] == 'password'

    # 証明書を取得
    res = Faraday.get('https://www.googleapis.com/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com')
    keys = JSON.parse(res.body)

    # 証明書から公開鍵を取得
    pub_key = OpenSSL::X509::Certificate.new(keys[decoded_token[1]['kid']]).public_key

    # https://firebase.google.com/docs/auth/admin/verify-id-tokens?hl=ja
    # 上記URLの仕様に合わせてdecode
    @id_token = JWT.decode id_token, pub_key, true, aud: 'c0fee-a18c8', verify_aud: true, algorithm: 'RS256'
    p @id_token[0]['user_id']

    ## TODO: Insert処理
    head :ok
  rescue JWT::DecodeError => exception
    logger.debug(exception)
  end
end
