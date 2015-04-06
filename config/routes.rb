Rails.application.routes.draw do

  # resources :categories do
  #   resources :articles
  # end
  root to: 'welcome#index'

  get "/categories/:category_id/articles", to: "articles#index", as: "category_articles"
  post "/categories/:category_id/articles", to: "articles#create"
  get "/categories/:category_id/articles/new", to: "articles#new", as: "new_category_article"
  get "/categories/:category_id/articles/:id/edit", to: "articles#edit", as: "edit_category_article"
  get "/categories/:category_id/articles/:id", to: "articles#show", as: "category_article"
  patch "/categories/:category_id/articles/:id", to: "articles#update"
  put "/categories/:category_id/articles/:id", to: "articles#update"
  delete "/categories/:category_id/articles/:id", to: "articles#destroy"
  get "/categories", to: "categories#index", as:"categories"
  post "/categories", to: "categories#create"
  get "/categories/new", to: "categories#new", as: "new_category"
  get "/categories/:id/edit", to: "categories#edit", as: "edit_category"
  get "/categories/:id", to: "categories#show", as: 'category'



end
