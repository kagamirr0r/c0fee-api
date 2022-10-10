# == Schema Information
#
# Table name: shop_likes
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  shop_id :integer          not null
#
class ShopLike < ApplicationRecord
  belongs_to :user
  belongs_to :shop
end
