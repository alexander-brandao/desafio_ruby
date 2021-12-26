Rails.application.routes.draw do
  # get 'home/index'
  #faz o home/index ser a pagina default do app
  root 'home#index'
  
  #caminho para "houses"
  get 'home/houses'
end
