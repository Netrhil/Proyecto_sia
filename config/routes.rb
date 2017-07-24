Rails.application.routes.draw do

  get 'otros/index'

  get 'otros/new'

  get 'otros/create'

  get 'otros/show'

  get 'otros/edit'

  get 'otros/update'

  get 'otros/destroy'

  get 'muebles/index'

  get 'muebles/new'

  get 'muebles/create'

  get 'muebles/show'

  get 'muebles/edit'

  get 'muebles/update'

  get 'muebles/destroy'

  get 'equipos/index'

  get 'equipos/new'

  get 'equipos/create'

  get 'equipos/show'

  get 'equipos/edit'

  get 'equipos/update'

  get 'equipos/destroy'

  get 'encargados/index'

  get 'encargados/new'

  get 'encargados/create'

  get 'encargados/show'

  get 'encargados/edit'

  get 'encargados/update'

  get 'encargados/destroy'

  get 'distribucions/index'

  get 'distribucions/new'

  get 'distribucions/create'

  get 'distribucions/show'

  get 'distribucions/edit'

  get 'distribucions/update'

  get 'distribucions/destroy'

  get 'centrals/new'

  get 'centrals/create'

  get 'centrals/show'

  get 'centrals/edit'

  get 'centrals/update'

  get 'centrals/destroy'

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

  resources :centrals do
    resources :distribucions do
      resources :equipos
      resources :muebles
      resources :otros
    end
  end
  resources :encargados do
    resources :distribucions
  end
end
