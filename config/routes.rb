Twitter::Application.routes.draw do
  get "tweets/new"

  get "tweets/create"

  get "tweets/show"

  get "tweets/list"

  devise_for :users

  get "pages/index"
  get "pages/about"
  get "pages/contact"
  get "pages/careers"

  match "/careers" => "pages#careers"
  match "/about" => "pages#about"
  match "/contact" => "pages#contact"

  root :to => 'pages#index'
end
