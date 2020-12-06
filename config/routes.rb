Rails.application.routes.draw do
  resources :aboutmes
  resources :grokkings
  resources :qanas
  resources :cpurcores
  resources :slacal
  root 'aboutmes#home'
  get 'welcome' => 'aboutmes#home'
  get 'getcpu' => 'cpucores#home'
  get 'home/slacal' => 'slacal#home'
  get 'home/about'
  get 'interview/index'
  post "home/slacal" => 'slacal#team'

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
