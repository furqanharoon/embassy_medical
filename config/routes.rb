Rails.application.routes.draw do
  get 'lot/index'

  get 'lot/new'

  get 'lot/show'

  get 'lot/create'

  get 'lot/edit'

  get 'lot/update'

  get 'lot/delete'

  get 'lot/destroy'

  get 'physician/index'

  get 'physician/new'

  get 'physician/create'

  get 'physician/show'

  get 'physician/edit'

  get 'physician/update'

  get 'physician/delete'

  get 'physician/destroy'

  get 'vdlr_results/index'

  get 'vdlr_results/show'

  get 'vdlr_results/new'

  get 'vdlr_results/create'

  get 'vdlr_results/edit'

  get 'vdlr_results/update'

  get 'vdlr_results/delete'

  get 'vdlr_results/destroy'

  get 'vdlr/index'

  get 'vdlr/show'

  get 'vdlr/new'

  get 'vdlr/create'

  get 'vdlr/edit'

  get 'vdlr/save_vdlr_result'

  get 'vdlr/record'

  get 'vdlr/update'

  get 'vdlr/delete'
  get 'vdlr/vdlr_result'
  post 'vdlr/vdlr_result'

  get 'vdlr/destroy'
  get 'allergys/new'

  get 'allergys/index'

  get 'allergys/show'

  get 'allergys/create'

  get 'allergys/edit'

  get 'allergys/update'

  get 'allergys/delete'

  get 'allergys/destroy'

  get 'health_cares/index'

  get 'health_cares/new'

  get 'health_cares/show'

  get 'health_cares/create'

  get 'health_cares/edit'

  get 'health_cares/update'

  get 'health_cares/delete'

  get 'health_cares/destroy'
  get 'roles/index'

  get 'roles/show'

  get 'roles/new'

  get 'roles/create'

  get 'roles/edit'

  get 'roles/update'

  get 'roles/delete'

  get 'roles/destroy'

  get 'menu_management/index'

  get 'menu_management/show'

  get 'menu_management/new'

  get 'menu_management/create'

  get 'menu_management/edit'

  get 'menu_management/update'

  get 'menu_management/delete'

  get 'menu_management/destroy'

  get 'registrations/index'

  get 'registrations/edit_rights'

  get 'registrations/update_rights'

  get 'registrations/show'

  get 'registrations/new'

  get 'registrations/create'

  get 'registrations/edit'

  get 'registrations/update'

  get 'registrations/delete'

  get 'registrations/destroy'

  get 'session/index'

  get 'session/show'

  get 'session/new'

  get 'session/create'

  get 'session/edit'

  get 'session/update'

  get 'session/delete'

  get 'session/destroy'

  get 'ajax_helper/get_day'

  get 'appointments/index'

  get 'appointments/show'

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/edit'

  get 'appointments/update'

  get 'appointments/delete'

  get 'appointments/destroy'

  get 'schedules/index'

  get 'schedules/show'

  get 'schedules/new'

  get 'schedules/create'

  get 'schedules/edit'

  get 'schedules/update'

  get 'schedules/delete'

  get 'schedules/destroy'

  get 'cities/index'

  get 'cities/show'

  get 'cities/edit'

  get 'cities/update'

  get 'cities/delete'

  get 'cities/destroy'

  get 'cities/create'

  get 'cities/new'

  get 'countries/index'

  get 'countries/show'

  get 'countries/edit'

  get 'countries/update'

  get 'countries/delete'

  get 'countries/destroy'

  get 'countries/create'

  get 'countries/new'

  get 'appointment/index'

  get 'appointment/show'

  get 'appointment/new'

  get 'appointment/create'

  get 'appointment/edit'

  get 'appointment/update'

  get 'appointment/delete'

  get 'appointment/destroy'


  get 'questions/new'

  get 'questions/create'

  get 'patients/index'

  get 'patients/show'

  get 'patients/new'

  get 'patients/create'

  get 'patients/edit'

  get 'patients/update'

  get 'patients/delete'

  get 'patients/destroy'

  get 'appointment/search'



  ##------------>>>Dont repeat this pattern<<<------------##


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'patients#new'

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

  match ':controller(/:action(/:id))(.:format)', :via =>[:get,:post]
end
