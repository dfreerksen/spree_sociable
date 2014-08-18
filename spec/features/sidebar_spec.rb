require 'spec_helper'

feature 'Sidebar link' do
  stub_authorization!

  let(:general_path)  { spree.edit_admin_general_settings_path }
  let(:sociable_path) { spree.admin_sociable_path }
  let(:element)       { '.sidebar li:last-child.active' }

  it 'shows in the sidebar' do
    visit general_path
    expect(page).to have_link(Spree.t('sociable.sidebar'), href: sociable_path)
    expect(page).to_not have_css(element)
  end

  it 'shows highlighted in the sidebar' do
    visit sociable_path
    expect(page).to have_css(element)
  end
end
