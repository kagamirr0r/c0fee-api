# == Schema Information
#
# Table name: impressions
#
#  id        :bigint           not null, primary key
#  bean_id   :integer          not null
#  i_sour    :integer
#  i_sweet   :integer
#  i_bitter  :integer
#  i_comment :text
#
FactoryBot.define do
  factory :impression, class: Impression do
    # bean_id { Faker::Number.number(digits: 1) }
    i_sour { Faker::Number.within(range: 1..5) }
    i_sweet { Faker::Number.within(range: 1..5) }
    i_bitter { Faker::Number.within(range: 1..5) }
    i_comment { Faker::Coffee.notes }
    association :bean
  end

  factory :another_impression, class: Impression do
    # bean_id { Faker::Number.number(digits: 1) }
    i_sour { Faker::Number.within(range: 1..5) }
    i_sweet { Faker::Number.within(range: 1..5) }
    i_bitter { Faker::Number.within(range: 1..5) }
    i_comment { Faker::Coffee.notes }
    association :bean
  end
end
