Rails.application.routes.draw do
  root 'game#home'
  get '/home' => 'game#home', as: 'home'
end
