require 'spec_helper'

describe Spree::Admin::SociableController do
  stub_authorization!

  let(:sociable_path) { spree.admin_sociable_path }

  context '#show' do
    it 'loads template' do
      spree_get :show
      expect(response).to render_template(:show)
    end
  end

  context '#update' do
    it 'loads template' do
      spree_post :update
      expect(flash[:success]).to(
        eq Spree.t('sociable.admin.flash.success.share.update')
      )
      expect(response).to redirect_to(sociable_path)
    end
  end
end
