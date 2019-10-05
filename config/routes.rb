Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  
  get  "articles/new" => "articles#new" #記事投稿画面
end
