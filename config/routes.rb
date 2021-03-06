Rails.application.routes.draw do
  #resources :sessions, only:[:update]
  resources :users, only: [:index]
  resources :messages, only: [:new, :create]
  resources :videos, only: [:index, :new, :create]
  resources :projects
  
  get 'home/index'

  resources :cashflows

  resources :donaturs

  devise_for :users , :skip => :registrations
  resources :listings, only:[:legalitas, :struktur, :beranda, :tabel, :new, :create, :index, :edit, :update]
  get 'beranda' => 'listings#beranda'
  get 'tabel' => 'listings#tabel'
  
  resources :recipients do
    # get 'santunan' => 'recipients#santunan', as: :santunan
    resources :cards
  end
    
  # get 'donatur' => 'd#index'
  
  resources :years do
      resources :months
  end
  
  resources :conversations, only: [:index, :show, :destroy] do
    # member do
      # post :reply
      # post :restore
    # end
    # collection do
#       delete :empty_trash
#     end
      member  do
        post :mark_as_read
      end
  end
  
  root 'listings#beranda'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
