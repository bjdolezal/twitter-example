Twitter::Application.routes.draw do
  get "pages/index"
  get "pages/about"
  get "pages/contact"
  get "pages/careers"

  match "/careers" => "pages#careers"
  match "/about" => "pages#about"
  match "/contact" => "pages#contact"

  root :to => 'pages#index'
end
