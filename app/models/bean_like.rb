# == Schema Information
#
# Table name: bean_likes
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  bean_id :integer          not null
#
class BeanLike < ApplicationRecord
  belongs_to :user
  belongs_to :bean
end
