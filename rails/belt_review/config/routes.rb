Rails.application.routes.draw do

    get 'attending/create'
    get 'attending/destroy'

#-----------USERS CONTROLLER-----------
    get '/' => 'users#new'
    post '/users' => 'users#create'
    post '/login' => 'users#login'
    get '/logout' => 'users#logout'
    get '/users/:id' => 'users#show'
    post '/users/:id' => 'users#update'

#-----------EVENTS CONTROLLER-----------
    get '/events' => 'events#index'
    post '/events' => 'events#create'
    get '/events/:id' => 'events#show'
    delete '/events/:id' => 'events#destroy'

#----------ATTENDING CONTROLLER----------
    post '/attend/:id' => 'attending#create'
    delete '/attend/:id' => 'attending#destroy'

#-----------COMMENTS CONTROLLER-----------
    post '/comments/:id' => 'comments#create'
end
