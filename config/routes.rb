Htcv2::Application.routes.draw do

  devise_for :users

  resources :feedbacks, only: [:create]

  get 'service/:id/:featured/:location' => 'services#this_service'
  get 'kit-temp' => 'static#kit_not_available'
  get 'about-us' => 'static#about_us'
  get 'contact-us' => 'static#contact_us'
  get 'press' => 'static#press'
  get 'resources(/:seo_url)', to: 'resources#index', as: 'resources'

  # get 'pages', to: redirect('/blog')
  # get 'pages/:id', to: 'posts#show_content_page'

  get "/404", :to => "static#error_page"
  get "/422", :to => "static#error_page"
  get "/500", :to => "static#error_page"

  get "/ebook", to: "static#ebook_page"


  # root to: 'posts#index'
  root to: 'static#ebook_page'
  ActiveAdmin.routes(self)

  scope '/campaign-tools' do
    # resources :services, only: [:index]
    # resources :resources, only: [:index, :create]
    # resources :resources, only: [:index]
    get 'resources(/:seo_url)', to: 'resources#index', as: 'resources'
    get 'services(/:seo_url)', to: 'services#index', as: 'services'
    get 'resource', to: redirect('/campaign-tools/resources')
    get 'service', to: redirect('/campaign-tools/services')
    get 'resource/:seo_url', to: 'resources#show', as: 'resource'
    get 'service/:seo_url', to: 'services#show', as: 'service'
    post 'services/create_service_lead'
    post 'services/create_video_request'
    post 'create_tool_suggestion' => 'services#create_tool_suggestion'

    root to: 'services#index'
  end

  # resources :community_posts, only: [:index, :create, :destroy], path: 'community' do 
  #   resources :comments, only: [:create, :destroy]
  # end

  # scope '/conversation' do
  #   resources :advice_posts, only: [:index, :show, :create, :destroy], path: 'advice' do 
  #     member { post :vote }
  #     resources :comments, only: [:create, :destroy] do
  #       member { post :vote }
  #     end
  #   end
  #   resources :question_posts, only: [:index, :show, :create, :destroy], path: 'questions' do 
  #     member { post :vote }
  #     resources :comments, only: [:create, :destroy] do
  #       member { post :vote }
  #     end
  #   end
  #   resources :news_posts, only: [:index, :show, :create, :destroy], path: 'news' do 
  #     member { post :vote }
  #     resources :comments, only: [:create, :destroy] do
  #       member { post :vote }
  #     end
  #   end
  #   root :to => 'advice_posts#index'
  # end

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"

  # mount Spree::Core::Engine, :at => '/store'
        

  # scope '/blog' do

  #   namespace :admin do
  #     resource :session

  #     # resources :posts, :pages do
  #     resources :posts do
  #       post 'preview', :on => :collection
  #     end
  #     # resources :comments
  #     resources :undo_items do
  #       post 'undo', :on => :member
  #     end

  #     match 'health(/:action)' => 'health', :action => 'index', :as => :health

  #     root :to => 'dashboard#show'
  #   end

  #   # resources :archives, :only => [:index]
  #   # resources :pages, :only => [:show]

  #   constraints :year => /\d{4}/, :month => /\d{2}/, :day => /\d{2}/ do
  #     # get ':year/:month/:day/:slug/comments'  => 'comments#index'
  #     # post ':year/:month/:day/:slug/comments' => 'comments#create'
  #     # get ':year/:month/:day/:slug/comments/new' => 'comments#new'
  #     get ':year/:month/:day/:slug' => 'posts#show'
  #   end

  #   scope :to => 'posts#index' do
  #     get 'posts.:format', :as => :formatted_posts
  #     # get '(:tag)', :as => :posts
  #   end

  #   root :to => 'posts#index'

  # end

  # root to: 'posts#index'

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
