# == Schema Information
#
# Table name: recipe_likes
#
#  id        :bigint           not null, primary key
#  user_id   :integer          not null
#  recipe_id :integer          not null
#
require 'rails_helper'

RSpec.describe RecipeLike, type: :model do
end
