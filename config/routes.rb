Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts

  get '/about' => 'about#index' # or match for older Rails versions
	resources :about
end