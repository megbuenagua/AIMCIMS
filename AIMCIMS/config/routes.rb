Rails.application.routes.draw do
 
  get 'welcome/home'
  root 'welcome#index'
  get '/members/search' => 'members#search'
  
  get '/capital_build_ups/search' => 'capital_build_ups#search'

  
  get '/loan_applications/search' => 'loan_applications#search'
  get '/loan_applications/member' => 'loan_applications#member'
  get '/loan_applications/compute' => 'loan_applications#compute'
   
  #get '/members/:id', to: 'savings#new', as: 'member'
  
  get '/savings/search' => 'savings#search'
  get '/savings/member'=> 'savings#member'
  
  resources :capital_build_ups
  
  resources :cbu_contributions
  
  resources :co_makers

  resources :expenses
  
  resources :loan_payments

  resources :loan_applications

  resources :loan_types

  resources :login_accounts

  resources :admin_staffs
 
  resources :members 
  
  resources :savings
  
  resources :withdrawals

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
