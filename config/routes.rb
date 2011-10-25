Teste4::Application.routes.draw do

  get "mobile/index"

  get "mobile/lista_area"

  get "mobile/lista_categoria"

  get "mobile/lista_perfil"

  get "mobile/twitter"

  devise_for :admins,
			:path => '/',
			:path_names => {
				:sign_in  => 'entrar',
				:sign_out => 'sair',
				:sign_up => 'registrar'}

  root :to => "home#index"


  resources :perfis

  resources :categorias

  resources :areas

  resources :assuntos


  # See how all your routes lay out with "rake routes"
end
