Rails.application.routes.draw do
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index new create]
  end
end
