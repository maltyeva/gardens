Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end
  root to: "gardens#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
