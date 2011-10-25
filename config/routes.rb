Teste4::Application.routes.draw do
  devise_for :admin

  resources :perfis

  resources :categorias

  resources :areas

  resources :assuntos


  # See how all your routes lay out with "rake routes"
end
