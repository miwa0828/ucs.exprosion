Rails.application.routes.draw do
  #ユーザー側ルーティング
  root to: 'homes#top'
  get '/about' => 'homes#about', as: 'about'
  resources :shops
  resources :posts
  
  #オーナー側ルーティング
  devise_for :owners
end
