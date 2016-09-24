Rails.application.routes.draw do
  get '/' => 'main#index'
  post '/get_emoji' => 'main#get_emoji'
  get '/mood' => 'main#show'
end
