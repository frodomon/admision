Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users, controllers: { registrations: 'user/registrations', sessions: 'user/sessions', passwords:'user/passwords' },
  path: '', path_names: {
    sign_in: 'login',
    sign_up: 'register',
    password: 'forgot_password'
  }
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get'inicio', to: 'static_pages#home', as: :home
	root :to => 'static_pages#index'
end
