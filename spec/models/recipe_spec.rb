# == Schema Information
#
# Table name: recipes
#
#  id               :bigint           not null, primary key
#  user_id          :integer
#  bean_id          :integer
#  hot_ice          :integer          default("hot")
#  grind            :integer
#  temperature      :integer
#  amount           :integer
#  extracted_amount :integer
#  extraction       :integer
#  recipe_image     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { build(:recipe) }

  describe 'validation' do
    it 'is invalid without a bean hot_ice' do
      recipe.hot_ice = ''
      expect(recipe.valid?).to eq(false)
    end

    it 'is invalid over 999 of amount' do
      recipe.amount = 1000
      expect(recipe.valid?).to eq(false)
    end

    it 'is invalid over 999 of extracted_amount' do
      recipe.extracted_amount = 1000
      expect(recipe.valid?).to eq(false)
    end
  end
end
