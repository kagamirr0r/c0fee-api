CarrierWave.configure do |config|
	if Rails.env.development? || Rails.env.test?
		config.asset_host = "http://localhost:3000"
		config.storage = :file
		config.cache_storage = :file	
	else
		config.fog_credentials = {
			provider: "AWS",
			aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
			aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
			region: "ap-northeast-1"
		}
		config.fog_public = false
		config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
		config.fog_directory = "c0fee-private"
		# config.cache_storage = :fog
	end
end
