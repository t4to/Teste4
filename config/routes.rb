Teste4::Application.routes.draw do

	match 'm' => 'mobile#index', :as => 'mobile_home'
	match ':assunto_id/areas' => 'home#lista_area', :as => 'areas_mobile'
	match ':area_id/categorias' => 'home#lista_categoria', :as => 'categorias_mobile'
	match ':categoria_id/perfis' => 'home#lista_perfil', :as => 'perfis_mobile'
	match ':perfil_id/posts' => 'home#twitter', :as => 'twitter_mobile'

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
