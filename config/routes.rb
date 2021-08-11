Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only:[:index, :new, :create, :show, :edit, :update] do
    collection do 
      get "list_up"
    end
  end
end
