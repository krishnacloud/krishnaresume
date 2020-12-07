Rails.application.routes.draw do
  get 'welcome/index'
  resources :aboutmes
  resources :grokkings
  resources :qanas
  resources :cpurcores
  resources :slacal

  get 'getcpu' => 'cpucores#home'
  get 'home/slacal' => 'slacal#index'
  get 'home/about'
  get 'interview/index'
  #post "home/aboutmes" => 'aboutmes#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
