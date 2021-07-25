Rails.application.routes.draw do
  #ユーザー側ルーティング
  root to: "homes#top"
  get "/about" => "homes#about", as: "about"

  get "search" => "shops#search"
  #オーナー側ルーティング
  devise_for :owners, :controllers => {
    :registrations => "owners/registrations",
    :sessions => "owners/sessions"
  }
    resources :owners
    resources :shops
    resources :posts

    patch "/posts/withdraw" => "posts#withdraw"                       #新着情報ー更新
    patch "/shops/withdraw" => "shops#withdraw"                       #ショップ情報ー更新

end
