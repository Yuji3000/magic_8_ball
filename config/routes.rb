Rails.application.routes.draw do
  get '/home', to: 'magic_eight#home'
  get '/answer', to: 'magic_eight#answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
