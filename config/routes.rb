Teste4::Application.routes.draw do

	match 'm' => 'mobile#index', :as => 'mobile_home'
	match 'm/info' => 'mobile#info', :as => 'mobile_info'
	match 'm/:assunto_id/areas' => 'mobile#lista_area', :as => 'areas_mobile'
	match 'm/:area_id/categorias' => 'mobile#lista_categoria', :as => 'categorias_mobile'
	match 'm/:categoria_id/perfis' => 'mobile#lista_perfil', :as => 'perfis_mobile'
	match 'm/:perfil_id/posts' => 'mobile#twitter', :as => 'twitter_mobile'

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
