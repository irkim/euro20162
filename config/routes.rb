Rails.application.routes.draw do


  namespace :admin do
  get 'takimlar/index'
  end

  get 'admin/index' => 'admin/admin#index'
  get 'admin' => 'admin/admin#index'

  get 'gruplar' => 'gruplar#index', as: 'gruplarvetakimlar'
  get 'home'  => 'home#index'
  root 'home#index'

  get 'signup'=>'users#new' , as:'signup'
  get 'admin/userlist' => 'admin/user#index', as:'userlist'
  get 'admin/user/:id' => 'admin/user#edit', as:'getuser'
  patch 'admin/user/:id' => 'admin/user#update' , as: 'updateuser'

  get 'userbet' => 'userbet#index',as: 'mybets'

  resources :users
  get 'login'=> 'sessions#new', as:'login'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy' , as:'logout'

  get 'admin/gruplar' => 'admin/gruplar#gruplar', as: 'admingruplar'
  get 'admin/gruplar/new' => 'admin/gruplar#new', as: 'adminnewgroup'
  get 'admin/takimlar' => 'admin/takimlar#index', as:'admintakimlar'
  get 'admin/takimlar/new' => 'admin/takimlar#new', as: 'adminnewteam'
  get 'admin/schedule' => 'admin/schedule#schedule', as: 'adminschedule'
  get 'admin/schedule/new' => 'admin/schedule#new' , as: 'adminschedulenew'

  post  'admin/gruplar'  => 'admin/gruplar#create', as:'admincreatenewgroup'
  post 'admin/takimlar' => 'admin/takimlar#create',as:'adminnewcreateteam'
  post 'admin/schedule' => 'admin/schedule#create', as:'adminnewcreateschedule'

  delete 'admin/gruplar/:id' => 'admin/gruplar#destroy', as: 'admingroupdelete'
  delete 'admin/takimlar/:id' => 'admin/takimlar#destroy',as:'adminteamdelete'
  delete 'admin/schedule/:id' => 'admin/schedule#destroy',as: 'adminscheduledelete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'home_controller#gruplar'

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
