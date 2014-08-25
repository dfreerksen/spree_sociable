module Spree
  module BaseHelper
    def sociable_footer_link(item)
      size      = Spree::Config.social_links_size
      link_text = Spree::Config.social_links_show_text ? item.label : nil
      content   = fa_icon("#{item.icon} #{size}", text: link_text)
      link      = content_tag(:a, content, href: item.url, target: '_blank')

      content_tag(:li, link)
    end
  end
end
