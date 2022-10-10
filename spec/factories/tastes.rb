# == Schema Information
#
# Table name: tastes
#
#  id         :bigint           not null, primary key
#  recipe_id  :integer
#  t_sour     :integer          not null
#  t_sweet    :integer          not null
#  t_bitter   :integer          not null
#  t_aroma    :integer          not null
#  t_fullbody :integer          not null
#  t_comment  :text
#
FactoryBot.define do
  factory :taste, class: Taste do
    recipe_id { Faker::Number.number(digits: 1) }
    t_sour { Faker::Number.within(range: 1..5) }
    t_sweet { Faker::Number.within(range: 1..5) }
    t_bitter { Faker::Number.within(range: 1..5) }
    t_aroma { Faker::Number.within(range: 1..5) }
    t_fullbody { Faker::Number.within(range: 1..5) }
    t_comment { Faker::Coffee.notes }
    association :recipe
  end

  factory :another_taste, class: Taste do
    # recipe_id { Faker::Number.number(digits: 1) }
    t_sour { Faker::Number.within(range: 1..5) }
    t_sweet { Faker::Number.within(range: 1..5) }
    t_bitter { Faker::Number.within(range: 1..5) }
    t_aroma { Faker::Number.within(range: 1..5) }
    t_fullbody { Faker::Number.within(range: 1..5) }
    t_comment { Faker::Coffee.notes }
    association :recipe
  end
end
