# == Schema Information
#
# Table name: beans
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  shop_id    :integer
#  country    :integer
#  variety    :integer
#  process    :integer
#  roast      :integer
#  price      :integer
#  bean_image :string
#  roast_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area       :string
#  farm       :string
#
require 'rails_helper'

RSpec.describe Bean, type: :model do
  let(:bean) { build(:bean) }

  describe 'validation' do
    it 'is invalid without a country' do
      bean.country = ''
      expect(bean.valid?).to eq(false)
    end

    it 'is invalid over 30characters of area' do
      bean.area = 'a' * 31
      expect(bean.valid?).to eq(false)
    end

    it 'is invalid over 30characters of farm' do
      bean.farm = 'a' * 31
      expect(bean.valid?).to eq(false)
    end

    it 'is invalid over 10000 of price' do
      bean.price = 10_001
      expect(bean.valid?).to eq(false)
    end
  end
end
