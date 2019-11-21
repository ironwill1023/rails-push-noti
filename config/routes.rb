Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  resource :messages
  get '/add_msg', to: 'welcome#add_msg'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
