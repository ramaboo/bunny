namespace :api do
  resources :user, only: %i[index show]
end
