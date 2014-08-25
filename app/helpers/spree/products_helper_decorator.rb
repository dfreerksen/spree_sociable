module Spree
  module ProductsHelper
    def sociable_share_types
      return [] unless Spree::Config.social_share_enabled

      %w(twitter facebook google_plus pinterest tumblr reddit)
        .each_with_object([]) do |type, available|
          available << type if Spree::Config["#{type}_share"]
      end
    end

    # There really isn't a Spree helper for product URLs?
    # Also, this is very ugly.
    def sociable_image_url(image)
      unless image =~ /^(https?:)?\/\//i
        image = spree.root_url.gsub(/\/$/, '') + image
      end
      image
    end
  end
end
