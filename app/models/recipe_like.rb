# == Schema Information
#
# Table name: recipe_likes
#
#  id        :bigint           not null, primary key
#  user_id   :integer          not null
#  recipe_id :integer          not null
#
class RecipeLike < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
end
