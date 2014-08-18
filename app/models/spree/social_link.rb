module Spree
  class SocialLink < ActiveRecord::Base
    validates :url,  presence: true
    validates :icon, presence: true
  end
end
