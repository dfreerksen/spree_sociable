Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :sociable, only: [:show, :update], controller: 'sociable'

    namespace :sociable do
      resources :links, except: :show
    end
  end
end
