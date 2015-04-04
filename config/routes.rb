PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  get '/login', to: 'login#index'
end
