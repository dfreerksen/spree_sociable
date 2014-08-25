require 'spec_helper'

describe Spree::BaseHelper do
  let(:link)    { create(:link) }

  context '#sociable_footer_link' do
    before do
      Spree::Config.social_links_enabled   = true
      Spree::Config.social_links_show_text = true
    end

    it 'builds li with social link' do
      expect(helper.sociable_footer_link(link)).to(
        have_link(link.label, link.url)
      )
    end
  end
end
