require 'spec_helper'

feature 'On product detail page' do
  let(:product)      { create(:product) }
  let(:product_path) { spree.product_path(product) }
  let(:element)      { '[data-hook="sociable_sharing"]' }

  before { Spree::Config.twitter_share = true }

  context 'social sharing' do
    it 'is available' do
      Spree::Config.social_share_enabled = true
      visit product_path
      expect(page).to have_css(element)
    end

    it 'is not available' do
      Spree::Config.social_share_enabled = false
      visit product_path
      expect(page).to_not have_css(element)
    end
  end
end
