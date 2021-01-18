Rails.application.routes.draw do
  resources :guides
  resources :explorers
  resources :plans
  resources :advices
  resources :trips
  resources :spots
  resources :provinces
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
