  Rails.application.routes.draw do
  resources :ubigeos
  resources :banks
  resources :bank_accounts
  resources :dependents
  resources :reniecs
  resources :requests do
    collection do
      get 'search_spouse' => 'requests#search_spouse', as: :search_spouse
      get 'spouse/' => 'requests#spouse', as: :spouse
      get 'view_observations' => 'requests#view_observations', as: :view_observations
    end
  end
  resources :job_types
  resources :economy_activities
  resources :economy_sectors
  resources :salaries
  resources :observations
  resources :observation_types
  resources :alianzas
  devise_for :users, controllers: { registrations: 'user/registrations', sessions: 'user/sessions', passwords:'user/passwords' },
  path: '', path_names: {
    sign_in: 'login',
    sign_up: 'register',
    password: 'forgot_password'
  }
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get'inicio', to: 'static_pages#home', as: :home
  get'index', to: 'static_pages#index', as: :index
  get'dashboard', to: 'static_pages#dashboard', as: :dashboard
  get'thanks', to: 'static_pages#thanks', as: :thanks
  get'pep', to: 'static_pages#pep', as: :pep
	
  get '/ubigeo/get/departamentos(.:format)'=>"ubigeos#get_departamentos"
  get '/ubigeo/get/provincias/:departamento(.:format)'=>"ubigeos#get_provincias"
  get '/ubigeo/get/distritos/:provincia(.:format)'=>"ubigeos#get_distritos"
  get '/ubigeo/get/ubigeo/:ubigeo_id(.:format)' =>"ubigeos#get_ubigeo"

  root :to => 'static_pages#home'
end
