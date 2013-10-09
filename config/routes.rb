KippReportCard::Application.routes.draw do

  devise_for :users

  root :to => 'home#index'

  resources :students do
    resources :report_cards
  end

  resources :ratings

  # resources :sessions, only: [:new, :create, :destroy]
  # resources :schools, :char_strengths

  # resources :users do
  #   resources :categories
  #   resources :ratings
  # end

  # get '/admin' => 'users#index'
  # match '/signup',  to: 'users#new',            via: 'get'
  # match '/signin', to: 'sessions#new',          via: 'get'
  # match '/signout', to: 'sessions#destroy',     via: 'delete'

  # match '/ratings', to: 'ratings#index',        via: 'get' #rating for student
  # match '/dashboard', to: 'ratings#dashboard',  via: 'get' #teacher's dashboard for all student ratings
  # get '/users/:id/data.json' => 'ratings#data'
  # # get '/dashboard/data.json' => 'ratings#data_dashboard'

  # ##angular
  # get '/get_users_by_admin' => 'users#get_users_by_admin'
  # get '/get_students_by_school' => 'users#get_students_by_school'

  # ##render partials from ratings.html.erb in layouts for students
  # get '/users/:id/q1/ratings' => 'ratings#quarter1'
  # get '/users/:id/q2/ratings' => 'ratings#quarter2'
  # get '/users/:id/cumulative/ratings' => 'ratings#cumulative'
  # ##render partials from ratings.html.erb in layouts for teachers
  # get '/dashboard/q1/ratings' => 'ratings#dashboard_q1'
  # get '/dashboard/q2/ratings' => 'ratings#dashboard_q2'
  # get '/dashboard/cumulative/ratings' => 'ratings#dashboard_cumulative'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
