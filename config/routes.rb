Rails.application.routes.draw do
  
  root to: "application#home"
  resources :pods
  resources :books
  devise_for :users, :controllers => { registrations: 'registrations', omniauth_callbacks: 'omniauth'}

  resources :pods, only: [:show] do
    resources :books, only: [:new, :show, :edit, :update, :destroy]
  end
  
  
  #pod_books GET /pod/pod_id/book/:id 
  

  

end
