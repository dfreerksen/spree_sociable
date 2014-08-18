require 'spec_helper'

feature 'Action button in title bar' do
  stub_authorization!

  let(:sociable_path)    { spree.admin_sociable_path }
  let(:new_path)         { spree.new_admin_sociable_link_path }
  let(:index_path)       { spree.admin_sociable_links_path }
  let(:sociable_element) { "[data-hook='toolbar'] a[href='#{sociable_path}']" }
  let(:new_element)      { "[data-hook='toolbar'] a[href='#{new_path}']" }
  let(:index_element)    { "[data-hook='toolbar'] a[href='#{index_path}']" }

  context 'on sociable#show' do
    before { visit sociable_path }

    it 'for linking to sociable/links#index' do
      expect(page).to have_css(index_element)
    end

    it 'for linking to sociable/links#new' do
      expect(page).to have_css(new_element)
    end
  end

  context 'on sociable/links#index' do
    before { visit index_path }

    it 'for linking to sociable#show' do
      expect(page).to have_css(sociable_element)
    end

    it 'for linking to sociable/links#new' do
      expect(page).to have_css(new_element)
    end
  end

  context 'on sociable/links#new' do
    before { visit new_path }

    it 'for linking to sociable#show' do
      expect(page).to have_css(sociable_element)
    end

    it 'for linking to sociable/links#index' do
      expect(page).to have_css(index_element)
    end
  end
end
