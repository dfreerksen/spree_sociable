require 'spec_helper'

feature 'META tags' do
  let(:product)      { create(:product) }
  let(:product_path) { spree.product_path(product) }
  let(:twitter)      { '//meta[@name="twitter:card" and @content="product"]' }
  let(:facebook)     { '//meta[@property="og:type" and @content="product"]' }

  context 'not available' do
    before do
      Spree::Config.social_share_enabled = false
      Spree::Config.twitter_share        = false
      Spree::Config.facebook_share       = false
    end

    it 'for Twitter' do
      visit product_path
      expect(page).to have_no_selector(:xpath, twitter, visible: false)
    end

    it 'for Facebook' do
      visit product_path
      expect(page).to have_no_selector(:xpath, facebook, visible: false)
    end
  end

  context 'available' do
    before do
      Spree::Config.social_share_enabled = true
      Spree::Config.twitter_share        = true
      Spree::Config.facebook_share       = true
    end

    it 'for Twitter' do
      visit product_path
      expect(page).to have_selector(:xpath, twitter, visible: false)
    end

    it 'for Facebook' do
      visit product_path
      expect(page).to have_selector(:xpath, facebook, visible: false)
    end
  end
end
