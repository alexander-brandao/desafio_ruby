Rails.application.routes.draw do
  resources :houses
  # get 'home/index'
  #faz o home/index ser a pagina default do app
  root 'home#index'
  
  #caminho para "houses"
  get 'home/houses'
end
