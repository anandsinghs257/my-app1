Rails.application.routes.draw do
  get 'shops/index'

  resources :card_categories
  
  resources :shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get "home/index" => 'home#index'
  get '/shop_search_result' => "home#shop_search_result"
end
