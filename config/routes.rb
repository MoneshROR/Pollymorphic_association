Rails.application.routes.draw do
  #get 'comments/index'
  #get 'autos/index'
  #get 'bikes/index'
  #get 'cars/index'

  root "cars#index"

  resources :cars do
    resources :comments
  end

  resources :bikes do
    resources :comments
  end

  resources :autos do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
