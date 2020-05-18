Rails.application.routes.draw do
  draw :api
  draw :errors
  draw :pages
  draw :styleguide
  draw :users

  root 'pages#home'
end
