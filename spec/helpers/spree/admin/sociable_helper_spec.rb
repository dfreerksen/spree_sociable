require 'spec_helper'

describe Spree::Admin::SociableHelper do
  context '#social_links_size_values' do
    it 'should return 5 items' do
      expect(helper.social_links_size_values).to have(5).items
    end
  end

  context '#facebook_layout_values' do
    it 'should return 4 items' do
      expect(helper.facebook_layout_values).to have(4).items
    end
  end

  context '#facebook_action_values' do
    it 'should return 2 items' do
      expect(helper.facebook_action_values).to have(2).items
    end
  end

  context '#google_plus_button_annotation_values' do
    it 'should return 4 items' do
      expect(helper.google_plus_button_annotation_values).to have(4).items
    end
  end

  context '#google_plus_button_size_values' do
    it 'should return 3 items' do
      expect(helper.google_plus_button_size_values).to have(3).items
    end
  end

  context '#pinterest_button_size_values' do
    it 'should return 2 items' do
      expect(helper.pinterest_button_size_values).to have(2).items
    end
  end

  context '#pinterest_button_shape_values' do
    it 'should return 2 items' do
      expect(helper.pinterest_button_shape_values).to have(2).items
    end
  end

  context '#pinterest_button_color_values' do
    it 'should return 3 items' do
      expect(helper.pinterest_button_color_values).to have(3).items
    end
  end

  context '#pinterest_show_count_values' do
    it 'should return 3 items' do
      expect(helper.pinterest_show_count_values).to have(3).items
    end
  end

  context '#tumblr_button_values' do
    it 'should return 8 items' do
      expect(helper.tumblr_button_values).to have(8).items
    end
  end

  context '#reddit_style_values' do
    it 'should return 9 items' do
      expect(helper.reddit_style_values).to have(9).items
    end
  end

  context '#social_link_icon_values' do
    it 'should return 86 items' do
      expect(helper.social_link_icon_values).to have(86).items
    end
  end
end
