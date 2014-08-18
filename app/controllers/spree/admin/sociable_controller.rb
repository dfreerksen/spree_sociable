module Spree
  module Admin
    class SociableController < BaseController
      def update
        params.each do |name, value|
          Spree::Config[name] = value  if Spree::Config.has_preference?(name)
        end

        redirect_to admin_sociable_path, flash: {
          success: Spree.t('sociable.admin.flash.success.share.update')
        }
      end
    end
  end
end
