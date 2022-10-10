# == Schema Information
#
# Table name: recipes
#
#  id               :bigint           not null, primary key
#  user_id          :integer
#  bean_id          :integer
#  hot_ice          :integer          default("hot")
#  grind            :integer
#  temperature      :integer
#  amount           :integer
#  extracted_amount :integer
#  extraction       :integer
#  recipe_image     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :recipe, class: Recipe do
    user_id { Faker::Number.number(digits: 1) }
    bean_id { Faker::Number.number(digits: 1) }
    hot_ice { Faker::Number.within(range: 0..1) }
    grind { Faker::Number.within(range: 0..5) }
    temperature { Faker::Number.within(range: 60..100) }
    extracted_amount { Faker::Number.within(range: 1..999) }
    amount { Faker::Number.within(range: 1..1000) }
    extraction { Faker::Number.within(range: 0..10) }
    association :bean
    association :user
  end

  factory :another_recipe, class: Recipe do
    user_id { Faker::Number.number(digits: 1) }
    bean_id { Faker::Number.number(digits: 1) }
    hot_ice { Faker::Number.within(range: 0..1) }
    grind { Faker::Number.within(range: 0..5) }
    temperature { Faker::Number.within(range: 60..100) }
    extracted_amount { Faker::Number.within(range: 1..1000) }
    amount { Faker::Number.within(range: 1..1000) }
    extraction { Faker::Number.within(range: 0..10) }
    association :bean
    association :user
  end
end
