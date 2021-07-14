Rails.application.routes.draw do
  #ユーザー側ルーティング
  root to: 'homes#top'
  get '/about' => 'homes#about', as: 'about'


  #オーナー側ルーティング
  devise_for :owners, :controllers => {
    :registrations => 'owners/registrations',
    :sessions => 'owners/sessions'
  }
    resources :owners
    resources :shops
   resources :posts
end
