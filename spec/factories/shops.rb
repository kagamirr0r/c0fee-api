# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  url        :string
#  shop_image :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  address    :string
#
FactoryBot.define do
  factory :shop, class: Shop do
    name { Faker::Restaurant.name }
    address { Faker::Address.full_address }
    url { Faker::Internet.url }
  end

  factory :another_shop, class: Shop do
    name { Faker::Restaurant.name }
    address { Faker::Address.full_address }
    url { Faker::Internet.url }
  end
end
