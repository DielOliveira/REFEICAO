REFEICAO::Application.routes.draw do

  resources :clientes

  resources :refeicaos

  root  'static_pages#home'
  
end
