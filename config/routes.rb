Rails.application.routes.draw do
  resource :pages do
  	get :about
  	get :profile
  	get :contact
  end

  root to: 'visitors#index'
end
