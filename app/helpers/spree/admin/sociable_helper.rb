module Spree
  module Admin
    module SociableHelper
      def social_links_size_values
        {
          Spree.t('sociable.admin.options.normal') => 'lg',
          Spree.t('sociable.admin.options.2x')     => '2x',
          Spree.t('sociable.admin.options.3x')     => '3x',
          Spree.t('sociable.admin.options.4x')     => '4x',
          Spree.t('sociable.admin.options.5x')     => '5x'
        }
      end

      def facebook_layout_values
        {
          Spree.t('sociable.admin.options.standard')     => 'standard',
          Spree.t('sociable.admin.options.box_count')    => 'box_count',
          Spree.t('sociable.admin.options.button_count') => 'button_count',
          Spree.t('sociable.admin.options.button')       => 'button'
        }
      end

      def facebook_action_values
        {
          Spree.t('sociable.admin.options.like')      => 'like',
          Spree.t('sociable.admin.options.recommend') => 'recommend'
        }
      end

      def google_plus_button_annotation_values
        {
          Spree.t('sociable.admin.options.horizontal') => 'horizontal',
          Spree.t('sociable.admin.options.vertical')   => 'vertical-bubble',
          Spree.t('sociable.admin.options.none')       => 'none',
          Spree.t('sociable.admin.options.inline')     => 'inline'
        }
      end

      def google_plus_button_size_values
        {
          Spree.t('sociable.admin.options.small')  => '15',
          Spree.t('sociable.admin.options.medium') => '20',
          Spree.t('sociable.admin.options.large')  => '24'
        }
      end

      def pinterest_button_size_values
        {
          Spree.t('sociable.admin.options.small') => '20',
          Spree.t('sociable.admin.options.large') => '28'
        }
      end

      def pinterest_button_shape_values
        {
          Spree.t('sociable.admin.options.rectangular') => 'rect',
          Spree.t('sociable.admin.options.circular')    => 'round'
        }
      end

      def pinterest_button_color_values
        {
          Spree.t('sociable.admin.options.gray')  => 'gray',
          Spree.t('sociable.admin.options.red')   => 'red',
          Spree.t('sociable.admin.options.white') => 'white'
        }
      end

      def pinterest_show_count_values
        {
          Spree.t('sociable.admin.options.none')   => 'none',
          Spree.t('sociable.admin.options.above')  => 'above',
          Spree.t('sociable.admin.options.beside') => 'beside'
        }
      end

      def tumblr_button_values
        {
          Spree.t('sociable.admin.options.share1')  => '1',
          Spree.t('sociable.admin.options.share1t') => '1T',
          Spree.t('sociable.admin.options.share2')  => '2',
          Spree.t('sociable.admin.options.share2t') => '2T',
          Spree.t('sociable.admin.options.share3')  => '3',
          Spree.t('sociable.admin.options.share3t') => '3T',
          Spree.t('sociable.admin.options.share4')  => '4',
          Spree.t('sociable.admin.options.share4t') => '4T'
        }
      end

      def reddit_style_values
        {
          Spree.t('sociable.admin.options.buttonlite0') => '0',
          Spree.t('sociable.admin.options.buttonlite1') => '1',
          Spree.t('sociable.admin.options.buttonlite2') => '2',
          Spree.t('sociable.admin.options.buttonlite3') => '3',
          Spree.t('sociable.admin.options.buttonlite4') => '4',
          Spree.t('sociable.admin.options.buttonlite5') => '5',
          Spree.t('sociable.admin.options.button1')     => 'button1',
          Spree.t('sociable.admin.options.button2')     => 'button2',
          Spree.t('sociable.admin.options.button3')     => 'button3'
        }
      end

      def social_link_icon_values
        %w(
          adn android apple behance behance-square bitbucket bitbucket-square
          bitcoin btc codepen css3 delicious deviantart digg dribbble dropbox
          drupal empire facebook facebook-square flickr foursquare ge git
          git-square github github-alt github-square gittip google google-plus
          google-plus-square hacker-news html5 instagram joomla jsfiddle linkedin
          linkedin-square linux maxcdn openid pagelines pied-piper pied-piper-alt
          pied-piper-square pinterest pinterest-square qq ra rebel reddit
          reddit-square renren share-alt share-alt-square skype slack soundcloud
          spotify stack-exchange stack-overflow steam steam-square stumbleupon
          stumbleupon-circle tencent-weibo trello tumblr tumblr-square twitter
          twitter-square vimeo-square vine vk wechat weibo weixin windows
          wordpress xing xing-square yahoo youtube youtube-play youtube-square
        )
      end
    end
  end
end
