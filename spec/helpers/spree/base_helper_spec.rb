require 'spec_helper'

describe Spree::BaseHelper do
  let(:link)    { create(:link) }
  let(:img)     { '/test.jpg' }
  let(:img_url) { "http://test.host#{img}" }

  context '#sociable_share_types' do
    context 'sharing not enabled' do
      before do
        Spree::Config.social_share_enabled = false
        Spree::Config.twitter_share        = false
        Spree::Config.facebook_share       = false
        Spree::Config.google_plus_share    = false
        Spree::Config.pinterest_share      = false
        Spree::Config.tumblr_share         = false
        Spree::Config.reddit_share         = false
      end

      it 'should return empty array when not enabled' do
        expect(helper.sociable_share_types).to eql []
      end
    end

    context 'sharing is enabled' do
      before { Spree::Config.social_share_enabled = true }

      it "should contain nothing in the array" do
        expect(helper.sociable_share_types).to eql []
      end

      it 'should only contain `twitter` in the array' do
        Spree::Config.twitter_share = true
        expect(helper.sociable_share_types).to eql ['twitter']
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
