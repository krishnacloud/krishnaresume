Rails.application.routes.draw do
  get 'machinetype/index'
  root 'home#about'
  get 'home/about'
  get 'home/index'
  post 'home/index' => 'home#index'
  #get 'welcome/home'
  resources :aboutmes
  resources :grokkings
  resources :qanas
  resources :cpurcores
  resources :slacal

  get 'getcpu' => 'cpucores#home'
  get 'slacal/home_' => 'slacal#home '
  get 'home/about'
  get 'interview/index'
  post "machinetype/index" => 'machinetype#index'
  #post "home/aboutmes" => 'aboutmes#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
