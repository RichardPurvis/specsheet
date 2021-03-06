Rails.application.routes.draw do

  get 'columns/edit'

  get 'columns/create'

  get 'columns/destroy'

  devise_for :users


  get 'welcome/index'

  get 'welcome/about'

  get 'ratings/create'

  get 'ratings/destroy'

  get 'reviews/create'

  get 'reviews/new'

  get 'reviews/destroy'

  get 'items/show'

  get 'items/_new'

  get 'items/edit'

  get 'items/create'

  get 'items/update'

  get 'items/destroy'

  get 'users/update'

  get 'users/show'

  get 'sheets/index'

  get 'sheets/show'

  get 'sheets/new'

  get 'sheets/edit'

  post 'sheets/create'

  get 'sheets/update'

  get 'sheets/destroy'

  resources :sheets do
    resources :items
  end

  resources :columns

  root to: 'welcome#index'
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
