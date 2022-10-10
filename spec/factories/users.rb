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
FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 8)
    username { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    password { password }
    password_confirmation { password }
  end
end
