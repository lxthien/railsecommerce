Rails.application.routes.draw do
  get 'sessions/new'

  resources :productcats
  resources :users
  resources :news
  resources :newscatalogs

  root to: 'index#index'

  namespace :admin do
    root to: "productcats#index"
    resources :productcats do
      post :deactivate_widgets
    end
    resources :products
    resources :widgets
    resources :newscatalogs
    resources :news

    get 'productcats/:id/list_by_cat' => 'productcats#list_by_cat'
  end

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

  # Router for account
  match '/login' => 'sessions#new', :via => [:get], :as => :login
  match '/logout' => 'sessions#destroy', :via => [:get], :as => :logout
  post '/sessions/create' => 'sessions#create'
  get '/sign-up' => 'users#new'
  match '/account' => 'users#account', :via => [:get], :as => :account
  match '/edit-profile' => 'users#edit', :via => [:get], :as => :edit_profile
  post '/users/update' => 'users#update'

  get '/category/:url' => 'news#index'
  match '/about-us' => 'index#aboutus', :via => [:GET], :as => :about_us


  match '/telephone' => 'products#getListTelephone', :via => [:GET], :as => :telephone
  match '/telephone/:url' => 'products#getListProductsByCat', :via => [:GET]

  get '/shopcollections' => 'products#getListCollection'
  get '/shopcollections/:url' => 'products#getListProductsByCat'

  # Router for shopping cart
  get 'cart' => 'cart#index', :as => 'cart_index'
  get 'cart/add/:id' => 'cart#add', :as => 'cart_add'
  delete 'cart/remove(/:id(/:all))' => 'cart#delete', :as => 'cart_delete'

  get '/products/search' => 'products#search'

end
