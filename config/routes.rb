Rails.application.routes.draw do
  resources :bookshelves

  root to: 'bookshelves#index'
end
