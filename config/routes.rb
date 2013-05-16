Phb::Application.routes.draw do
  resources :locations

  namespace :api do
    resources :users do
      collection do
        post 'signin' => "users#signin"
        post 'signup' => "users#signup"
      end
    end
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
