# == Schema Information
#
# Table name: bean_likes
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  bean_id :integer          not null
#
FactoryBot.define do
  factory :bean_like do
    association :bean
    association :user
  end
end
