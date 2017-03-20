Rails.application.routes.draw do
  get 'road_list/new'

  get 'road_list/past'

  root 'sessions#new'
  delete 'stations/:id' => 'stations#destroy', as: 'delstation'
  get 'stations' => 'stations#new', as: 'newstation'
  post 'stations' => 'stations#create', as: 'createstation'
  get 'reports' => 'reports#index', as: 'reportindex'
  get 'reports/new' => 'reports#new', as: 'reportnew'
  post 'reports' => 'reports#create', as: 'savereport'
  get 'reports/show' => 'reports#show', as: 'showreport'
  get 'reports/edit' => 'reports#edit', as: 'editreport'
  get 'reports/search' => 'reports#search', as:'reportsearch'
  get 'reports/choiceedit' => 'reports#choiceedit', as:'choiceedit'
  get 'reports' => 'reports#update', as:'updatereport'
  delete 'reports/:id' => 'reports#destroy', as:'delreport'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
  get 'download' => 'reports#download'
  get 'print' => 'reports#print'
  

  resources :users
 

	
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
