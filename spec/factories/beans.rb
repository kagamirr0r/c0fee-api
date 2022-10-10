# == Schema Information
#
# Table name: beans
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  shop_id    :integer
#  country    :integer
#  variety    :integer
#  process    :integer
#  roast      :integer
#  price      :integer
#  bean_image :string
#  roast_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area       :string
#  farm       :string
#
FactoryBot.define do
  factory :bean, class: Bean do
    country { Faker::Number.within(range: 0..30) }
    area { Faker::Nation.capital_city }
    variety { Faker::Number.within(range: 0..13) }
    farm { Faker::Name.first_name }
    process { Faker::Number.within(range: 0..7) }
    roast { Faker::Number.within(range: 0..7) }
    price { Faker::Number.within(range: 100..10_000) }
    bean_image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/bean.png')) }
    association :user
    association :shop
  end

  factory :another_bean, class: Bean do
    country { Faker::Number.within(range: 0..30) }
    area { Faker::Nation.capital_city }
    variety { Faker::Number.within(range: 0..13) }
    farm { Faker::Name.first_name }
    process { Faker::Number.within(range: 0..7) }
    roast { Faker::Number.within(range: 0..7) }
    roast_date { Faker::Date.between(from: 7.days.ago, to: Date.today) }
    price { Faker::Number.within(range: 100..10_000) }
    bean_image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/bean.png')) }
    association :shop
  end
end
