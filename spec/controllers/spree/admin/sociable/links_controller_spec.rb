require 'spec_helper'

describe Spree::Admin::Sociable::LinksController do
  stub_authorization!

  let(:link)        { create(:link) }
  let(:index_path)  { spree.admin_sociable_links_path }
  let(:valid_item) do
    {
      url:   'https://twitter.com/spreecommerce',
      label: 'Follow me',
      icon:  'twitter'
    }
  end
  let(:invalid_item) { valid_item.merge!(url: '') }

  before do
    user = create(:admin_user)
    controller.stub(try_spree_current_user: user)
  end

  context '#index' do
    it 'loads `index` template' do
      spree_get :index
      expect(response).to render_template(:index)
    end
  end

  context '#new' do
    it 'loads `new` template' do
      spree_get :new
      expect(response).to render_template(:new)
    end
  end

  context '#create' do
    context 'fails with invalid params' do
      it 'then renders `new`' do
        spree_post :create, social_link: invalid_item
        expect(response).to render_template(:new)
      end

      it 'does not create a link' do
        expect(Spree::SocialLink.count).to eq 0
        spree_post :create, social_link: invalid_item
        expect(Spree::SocialLink.count).to eq 0
      end
    end

    it 'creates link' do
      expect(Spree::SocialLink.count).to eq 0
      expect{spree_post :create, social_link: valid_item}.to(
        change(Spree::SocialLink, :count).by(1)
      )
      expect(flash[:success]).to(
        eq Spree.t('sociable.admin.flash.success.link.create')
      )
      expect(response).to redirect_to(index_path)
    end
  end

  context '#edit' do
    it 'loads `edit` template' do
      spree_get :edit, id: link.id
      expect(response).to render_template(:edit)
    end
  end

  context '#update' do
    context 'fails with invalid params' do
      it 'then renders `edit`' do
        spree_post :update, id: link.id, social_link: invalid_item
        expect(response).to render_template(:edit)
      end
    end

    it 'updates link item' do
      spree_post :update, id: link.id, social_link: valid_item
      expect(flash[:success]).to(
        eq Spree.t('sociable.admin.flash.success.link.update')
      )
      expect(response).to redirect_to(index_path)
    end
  end

  context '#destroy' do
    it 'deletes item' do
      spree_post :destroy, id: link.id
      expect(flash[:success]).to(
        eq Spree.t('sociable.admin.flash.success.link.delete')
      )
      expect(response).to redirect_to(index_path)
    end
  end
end
