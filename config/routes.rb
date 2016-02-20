Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root to: 'pages#home'
  post 'stringify', to: 'pages#stringify'
  put 'age', to: 'pages#person', as: 'age'
  get 'me', to: 'me'
end
