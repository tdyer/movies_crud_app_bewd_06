Rails.application.routes.draw do

  # Create the routes for user registration, login, ...
  devise_for :users

  # / will be directed to the movies index action
  root to: 'movies#index'

  # generate all the CRUD routes for a resource.
  resources :movies do
    # Creates a Nested Resource for reviews.
    resources :reviews
  end

  # # Handle a HTTP GET /movies
  # # Invoke the MoviesController#index action/method
  # get '/movies', to: 'movies#index'

  # # Handle a HTTP GET /movies/new
  # get '/movies/new', to: 'movies#new', as: 'new_movie'

  # # Route a HTTP POST Request for movies
  # # MoviesController create action
  # post '/movies', to: 'movies#create'

  # # Route to generate a HTML form to edit a movie.
  # # MoviesController edit action
  # get '/movies/:id/edit', to: 'movies#edit', as: 'edit_movie'

  # # Route a HTTP PATCH Request for movies to the
  # # MoviesController update action.
  # patch '/movies/:id', to: 'movies#update'

  # # Handle a HTTP GET /movies/1
  # get '/movies/:id', to: 'movies#show', as: 'movie'

  # # Route a HTTP DELETE /movies/1 to the
  # # MoviesController#destroy action
  # delete '/movies/:id', to: 'movies#destroy'

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
