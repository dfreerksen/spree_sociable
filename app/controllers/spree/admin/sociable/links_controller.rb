module Spree
  module Admin
    module Sociable
      class LinksController < BaseController
        before_action :set_link, only: [:edit, :update, :destroy]

        helper Spree::Admin::SociableHelper

        def index
          @links = Spree::SocialLink.all
        end

        def new
          @link = Spree::SocialLink.new
        end

        def create
          @link = Spree::SocialLink.new(link_params)
          if @link.save
            redirect_to admin_sociable_links_path, flash: {
              success: Spree.t('sociable.admin.flash.success.link.create')
            }
          else
            render :new
          end
        end

        def update
          if @link.update_attributes(link_params)
            redirect_to admin_sociable_links_path, flash: {
              success: Spree.t('sociable.admin.flash.success.link.update')
            }
          else
            render :edit
          end
        end

        def destroy
          @link.destroy
          respond_to do |format|
            format.html do
              redirect_to admin_sociable_links_path, flash: {
                success: Spree.t('sociable.admin.flash.success.link.delete')
              }
            end
            format.json { head :no_content }
          end
        end

        protected

        def set_link
          @link = Spree::SocialLink.find(params[:id])
        end

        def link_params
          params.require(:social_link).permit(:url, :label, :icon)
        end
      end
    end
  end
end
