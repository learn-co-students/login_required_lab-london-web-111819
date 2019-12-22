Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new', as:'login_form'
  post '/login' => 'sessions#create', as:'login_action'
  post '/logout' => 'sessions#destroy', as:'logout_action'
  get '/secretpage' => 'secrets#show', as:'secretpage'
  get '/secretpage/inputform' => 'secrets#inputform', as:'inputform'
  post '/secretpage/inputform_action' => 'secrets#inputform_action', as:'inputform_action'

end
