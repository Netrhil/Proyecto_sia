Rails.application.routes.draw do

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  root to: "bienvenida#index"

  #Rutas para equipos
  get '/equipos', to: 'equipos#index'
  get "/equipos/nuevo", to: "equipos#new"
  post "/equipos" => "equipos#create"
  get '/equipos/editar/:id', to: 'equipos#edit'
  get '/equipos/darbaja/:id', to: 'equipos#baja'
  get '/equipos/eliminar/:id', to: 'equipos#destroy'

  #Rutas para muebles
  get '/muebles', to: 'muebles#index'
  get "/muebles/nuevo", to: "muebles#new"
  post "/muebles" => "muebles#create"
  get '/muebles/editar/:id', to: 'muebles#edit'
  get '/muebles/darbaja/:id', to: 'muebles#baja'
  get '/muebles/eliminar/:id', to: 'muebles#destroy'

  #Rutas para otros
  get '/otros', to: 'otros#index'
  get "/otros/nuevo", to: "otros#new"
  post "/otros" => "otros#create"
  get '/otros/editar/:id', to: 'otros#edit'
  get '/otros/darbaja/:id', to: 'otros#baja'
  get '/otros/eliminar/:id', to: 'otros#destroy'


end
