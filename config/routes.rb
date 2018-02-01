Rails.application.routes.draw do 
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :usrs
  get 'welcome/index'
  get 'welcome/Repertuar'
  get 'welcome/Cennik'
  get 'welcome/Kontakt'
  get 'welcome/Forum'
  get 'welcome/Film1'
  get 'welcome/Film2'
  get 'welcome/Film3'
  get 'welcome/Film4'
  get 'welcome/Film5'

  resources :forums
  resources :reservations
  resources :rezjedens
  resources :rezdwas
  resources :reztrzys
  resources :rezczterys

  root 'welcome#index'
  root 'welcome#Repertuar'
  root 'welcome#Cennik'
  root 'welcome#Kontakt'
  root 'welcome#Forum'

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"

  resources :lectures

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
end





