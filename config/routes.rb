DomoticApp::Application.routes.draw do

  get "patio/index"

  get "cochera/index"

  get "habitacion_secundaria/index"

  get "habitacion_principal/index"

  get "bano/index"

  get "cocina/index"

  #rutas de usuarios
  devise_for :users

  #rutas root and home
  get "home/index"
  root :to => 'home#index'

  #rutas de sala
  get 'sala' => 'sala#index', :as => :sala
  get 'sala_prender_foco_principal' => 'sala#prender_foco_principal'
  get 'sala_apagar_foco_principal' => 'sala#apagar_foco_principal'
  #get 'crear_valor_sala' => 'sala#crear_valor'

  #rutas del comedor
  get 'comedor' => 'comedor#index', :as => :comedor
  get 'comedor_prender_foco_principal' => 'comedor#prender_foco_principal'
  get 'comedor_apagar_foco_principal' => 'comedor#apagar_foco_principal'
  #get 'crear_valor_comedor' => 'comedor#crear_valor'

  #rutas de la cocina
  get 'cocina' => 'cocina#index', :as => :cocina
  get 'cocina_prender_foco_principal' => 'cocina#prender_foco_principal'
  get 'cocina_apagar_foco_principal' => 'cocina#apagar_foco_principal'
  get 'crear_valor_cocina' => 'cocina#crear_valor'

  #rutas del bano
  get 'bano' => 'bano#index', :as => :bano

  #rutas del cuerto principal
  get 'habitacion_principal' => 'habitacion_principal#index', :as  => :habitacion_principal

  #rutas del cuato secundario
  get 'habitacion_secundaria' => 'habitacion_secundaria#index', :as  => :habitacion_secundaria

  #rutas de la cochera
  get 'cochera' => 'cochera#index', :as => :cochera

  #rutas del patio
  get 'patio' => 'patio#index', :as => :patio
end
