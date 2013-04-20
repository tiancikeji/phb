Phb::Application.routes.draw do
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
  resources :users
end
