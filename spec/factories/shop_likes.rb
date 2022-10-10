# == Schema Information
#
# Table name: shop_likes
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  shop_id :integer          not null
#
FactoryBot.define do
  factory :shop_like do
    association :shop
    association :user
  end
end
