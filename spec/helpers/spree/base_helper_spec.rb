require 'spec_helper'

describe Spree::BaseHelper do
  let(:link)    { create(:link) }
  let(:img)     { '/test.jpg' }
  let(:img_url) { "http://test.host#{img}" }

  context '#sociable_share_types' do
    before do
      Spree::Config.social_share_enabled = false
      Spree::Config.twitter_share        = false
      Spree::Config.facebook_share       = false
    end

    context 'sharing not enabled' do
      it 'should return empty array when not enabled' do
        expect(helper.sociable_share_types).to eql []
      end
    end

    context 'sharing is enabled' do
      before { Spree::Config.social_share_enabled = true }

      it 'should contain nothing in the array' do
        expect(helper.sociable_share_types).to eql []
      end

      it 'should contain `twitter` in the array' do
        Spree::Config.twitter_share = true
        expect(helper.sociable_share_types).to eql ['twitter']
      end

      it 'should contain `twitter` and `facebook` in the array' do
        Spree::Config.twitter_share  = true
        Spree::Config.facebook_share = true
        expect(helper.sociable_share_types).to eql ['twitter', 'facebook']
      end
    end
  end

  context '#sociable_footer_link' do
    before do
      Spree::Config.social_links_enabled   = true
      Spree::Config.social_links_show_text = true
    end

    it 'should build li with social link' do
      expect(helper.sociable_footer_link(link)).to(
        have_link(link.label, link.url)
      )
    end
  end

  context '#sociable_image_url' do
    context 'builds non-prefixed image' do
      it 'that is not escaped' do
        expect(helper.sociable_image_url(img_url)).to eql img_url
      end
    end

    context 'builds prefixed image' do
      it 'that is not escaped' do
        expect(helper.sociable_image_url(img)).to eql img_url
      end
    end
  end
end
