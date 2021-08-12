Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts do
    collection do 
      get "list_up"
      get "search_genre"
    end
  end
end
