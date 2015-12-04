Rails.application.routes.draw do
  resources :tasks do
    resources :comments, only: [:create]
  end
  resources :projects

end
