# == Schema Information
#
# Table name: impressions
#
#  id        :bigint           not null, primary key
#  bean_id   :integer          not null
#  i_sour    :integer
#  i_sweet   :integer
#  i_bitter  :integer
#  i_comment :text
#
require 'rails_helper'

RSpec.describe Impression, type: :model do
  let(:impression) { build(:impression) }

  describe 'validation' do
    # it 'is invalid without i_sour' do
    #   impression.i_sour = ''
    #   expect(impression.valid?).to eq(false)
    # end

    # it 'is invalid without i_sweet' do
    #   impression.i_sweet = ''
    #   expect(impression.valid?).to eq(false)
    # end

    # it 'is invalid without i_bitter' do
    #   impression.i_bitter = ''
    #   expect(impression.valid?).to eq(false)
    # end

    it 'i_comment not be over 100' do
      impression.i_comment = 'a' * 101
      expect(impression.valid?).to eq(false)
    end
  end
end
