Phb::Application.routes.draw do
  resources :add_user_id_to_baby_cards


  resources :babycards
  resources :questions
  resources :locations
  # get 'tags/:tag', to: 'articles#index', as: :tag
  resources :tags

  namespace :api do
    devise_scope :user do
      post 'users/signup' => 'registrations#create'
      post 'users/signin' => 'sessions#create'
    end
    resources :tags
    resources :categories
    resources :comments
    resources :articles
    resources :locations
    resources :babycards
    resources :questions
  end

  mount Ckeditor::Engine => '/ckeditor'

  resources :categories
  resources :comments
  resources :articles
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => {
    :sessions => :sessions
  }

  resources :users do
    member do 
      post 'create' => 'users#create'
    end
  end

end
