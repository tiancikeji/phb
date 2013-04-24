Phb::Application.routes.draw do
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
