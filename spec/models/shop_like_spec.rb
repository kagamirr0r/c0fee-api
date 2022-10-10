# == Schema Information
#
# Table name: shop_likes
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  shop_id :integer          not null
#
require 'rails_helper'

RSpec.describe ShopLike, type: :model do
end
