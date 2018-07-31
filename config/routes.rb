Rails.application.routes.draw do
  root 'static_pages#home'
  
  get '/home', to: 'static_pages#home'
  get '/new', to: 'users#new'
  post '/create', to: 'users#create'
  get '/show/:id', to: 'users#show'
  get '/show', to: 'users#show'



  get '/list', to: 'users#list'


  
  get '/contact', to:'static_pages#contact'
  get '/about', to:'static_pages#about'
  get '/about/toi', to:'static_pages#about_toi'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
