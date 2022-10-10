# == Schema Information
#
# Table name: recipe_likes
#
#  id        :bigint           not null, primary key
#  user_id   :integer          not null
#  recipe_id :integer          not null
#
FactoryBot.define do
  factory :recipe_like do
    association :recipe
    association :user
  end
end
