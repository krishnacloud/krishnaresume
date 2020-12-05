Rails.application.routes.draw do
  resources :aboutmes
  resources :grokkings
  resources :qanas
  get 'welcome' => 'aboutmes#home'
  get 'home/about'
  root 'home#index'
  get 'interview/index'

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
