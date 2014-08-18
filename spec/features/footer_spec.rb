require 'spec_helper'

feature 'In the footer' do
  let(:root_path) { spree.root_path }
  let(:element)   { '[data-hook="sociable_linking"]' }

  context 'social linking' do
    it 'is available when enabled' do
      Spree::Config.social_links_enabled = true
      visit root_path
      expect(page).to have_css(element)
    end

    it 'is not available when disabled' do
      Spree::Config.social_links_enabled = false
      visit root_path
      expect(page).to_not have_css(element)
    end
  end
end
