Rails.application.routes.draw do
  devise_for :users 
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'welcome#index'
  get "all_locations" => "locations#index"

  # resources :locations
  # resources :cohorts

  # resources :assignments do
  #   resources :submissions 
  # end

  #   resources :locations, :path => "all_cohorts" 
  # resources :cohorts, :path => "all_teachers_assignments" 
  # resources :assignments, :path => "all_student_submissions" 
  #   resources :submissions, :path => "one_student_submission"      
  resources :comments

  resources :locations
  resources :cohorts
  resources :assignments 
  resources :submissions     
  
  #   resources :locations 
  # resources :cohorts 
  # resources :assignments do
  #   resources :submissions   
  # end
  
# member do 
#           get :download_photo_pic 
#       end
#   resources :locations do
#     resources :cohorts do
#       resources :assignments do 
#         resources :submissions  
#         member do 
#           get :download_photo_pic 
#         end
#     end
#   end
# end
  
  # resources :assignments do
  #   resources :submissions 
  #   member do 
  #     get :download_photo_pic 
  #   end
  # end


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
