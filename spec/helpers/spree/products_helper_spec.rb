require 'spec_helper'

describe Spree::ProductsHelper do
  let(:img)     { '/test.jpg' }
  let(:img_url) { "http://test.host#{img}" }

  context '#sociable_share_types' do
    before do
      Spree::Config.social_share_enabled = false
      Spree::Config.twitter_share        = false
      Spree::Config.facebook_share       = false
      Spree::Config.google_plus_share    = false
      Spree::Config.pinterest_share      = false
      Spree::Config.tumblr_share         = false
      Spree::Config.reddit_share         = false
    end

    context 'when sharing is not enabled' do
      it 'returns an empty array' do
        expect(helper.sociable_share_types).to eql []
      end
    end

    context 'when sharing is enabled' do
      before { Spree::Config.social_share_enabled = true }

      it 'returns an empty array' do
        expect(helper.sociable_share_types).to eql []
      end

      it 'contains `twitter` in the array' do
        Spree::Config.twitter_share = true
        expect(helper.sociable_share_types).to eql ['twitter']
      end

      it 'contains `twitter` and `facebook` in the array' do
        Spree::Config.twitter_share  = true
        Spree::Config.facebook_share = true
        expect(helper.sociable_share_types).to eql ['twitter', 'facebook']
      end
    end
  end

  context '#sociable_image_url' do
    it 'builds non-prefixed image' do
      expect(helper.sociable_image_url(img_url)).to eql img_url
    end

    it 'builds prefixed image' do
      expect(helper.sociable_image_url(img)).to eql img_url
    end
  end
end
