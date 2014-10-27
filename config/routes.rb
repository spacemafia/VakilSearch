ConsumerTadka::Application.routes.draw do
  resources :users
  
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :questions do
    resources :answers do
      member do
        put "like", to: "answers#upvote"
        put "dislike", to: "answers#downvote"
      end
    end
  end
  
  resources :relationships, only: [:create, :destroy]
  
  resources :articles do
    resources :sectionones do
      member do
        put "like", to: "sectionones#upvote"
        put "dislike", to: "sectionones#downvote"
      end
    end
  end 

  resources :articles do
    resources :sectiontwos do
      member do
        put "like", to: "sectiontwos#upvote"
        put "dislike", to: "sectiontwos#downvote"
      end
    end
  end

  resources :articles do
    resources :sectionthrees do
      member do
        put "like", to: "sectionthrees#upvote"
        put "dislike", to: "sectionthrees#downvote"
      end
    end
  end

  resources :articles do
    resources :sectionfours do
      member do
        put "like", to: "sectionfours#upvote"
        put "dislike", to: "sectionfours#downvote"
      end
    end
  end

  resources :surveys

  root "static_pages#home"
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: :get
  match '/questions/:email/:id', to: 'questions#show', via: :get, as: :user_question
  match '/questions/:id/edit', to: 'questions#edit', via: :get
  match '/users/:id', to: 'users#show', via: :get, as: :users_showpage
  match '/all', to: 'questions#index', via: :get, as: :user_questions
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/tagged' => 'questions#tagged', via: :get, :as => 'tagged'
  match '/categories' => 'articles#tagged', via: :get, :as => 'categorised'
  match '/sectionones/:id', to: 'sectionones#show', via: :get, as: :sectionones_showpage
  match '/sectiontwos/:id', to: 'sectiontwos#show', via: :get, as: :sectiontwos_showpage
  match '/sectionthrees/:id', to: 'sectionthrees#show', via: :get, as: :sectionthrees_showpage
  match '/sectionfours/:id', to: 'sectionfours#show', via: :get, as: :sectionfours_showpage
  
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
