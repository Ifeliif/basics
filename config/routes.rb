Rails.application.routes.draw do
  get 'accounts/show'

  get 'accounts/edit'

  root "top#index"
  get "about" => "top#about", as: "about"
  get "lesson/:action(/:name)" =>"lesson"
  
  resources :members do
    collection { get "search" }
  end
  resources :articles
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  
  

end
