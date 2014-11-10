Rails.application.routes.draw do
  resources :bookshelves
  resources :welcome

  root to: 'welcome#index'
end
