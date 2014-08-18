require 'spec_helper'

describe Spree::BaseHelper do
  let(:link)    { create(:link) }
  let(:img)     { '/test.jpg' }
  let(:img_url) { "http://test.host#{img}" }

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
      it 'that is escaped' do
        expect(helper.sociable_image_url(img_url)).to(
          eql CGI.escape_html(img_url)
        )
      end

      it 'that is not escaped' do
        expect(helper.sociable_image_url(img_url)).to eql img_url
      end
    end

    context 'builds prefixed image' do
      it 'that is escaped' do
        expect(helper.sociable_image_url(img)).to(
          eql CGI.escape_html(img_url)
        )
      end

      it 'that is not escaped' do
        expect(helper.sociable_image_url(img)).to eql img_url
      end
    end
  end
end
