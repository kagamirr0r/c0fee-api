# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string           default(""), not null
#  email           :string           default(""), not null
#  password_digest :string           default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  avatar          :string
#
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe 'validation' do
    it 'is invalid without an email address' do
      user.email = ''
      expect(user.valid?).to eq(false)
    end
  end
end
