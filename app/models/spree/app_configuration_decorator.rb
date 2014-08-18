Spree::AppConfiguration.class_eval do
  # Social preferences
  preference :social_share_enabled, :boolean, default: false
  preference :social_links_enabled, :boolean, default: false
  preference :social_links_show_text, :boolean, default: false
  preference :social_links_size, :string, default: 'lg'

  # Twitter
  preference :twitter_share, :boolean, default: true
  preference :twitter_show_count, :boolean, default: true
  preference :twitter_button_large, :boolean, default: false
  preference :twitter_name, :string, default: ''

  # Facebook
  preference :facebook_share, :boolean, default: true
  preference :facebook_app_id, :string, default: ''
  preference :facebook_layout, :string, default: 'standard'
  preference :facebook_action, :string, default: 'like'
  preference :facebook_show_faces, :boolean, default: false
  preference :facebook_include_share, :boolean, default: false

  # Google+
  preference :google_plus_share, :boolean, default: true
  preference :google_plus_button_annotation, :string, default: 'horizontal'
  preference :google_plus_button_size, :string, default: '20'

  # Pinterest
  preference :pinterest_share, :boolean, default: false
  preference :pinterest_button_size, :string, default: '20'
  preference :pinterest_button_shape, :string, default: 'rect'
  preference :pinterest_button_color, :string, default: 'gray'
  preference :pinterest_show_count, :boolean, default: 'beside'

  # Tumblr
  preference :tumblr_share, :boolean, default: false
  preference :tumblr_button, :string, default: '2'

  # Reddit
  preference :reddit_share, :boolean, default: false
  preference :reddit_style, :string, default: '1'
end
