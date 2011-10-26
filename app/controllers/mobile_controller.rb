class MobileController < ApplicationController
	def index
		@assunto = Assunto.first
	end

	def info
		@assunto = Assunto.first
	end
	
	def lista_area
		@areas = Area.find_all_by_assunto_id params[:assunto_id]
	end

	def lista_categoria
		@categorias = Categoria.find_all_by_area_id params[:area_id]
		@area = Area.find_by_id params[:area_id]
	end

	def lista_perfil
		@perfis = Perfil.find_all_by_categoria_id params[:categoria_id]
		@categoria = Categoria.find_by_id params[:categoria_id]
	end

	def twitter
		@perfil = Perfil.find_by_id params[:perfil_id]

		@screen_name = @perfil.user
		  
		@resultados = Twitter.user_timeline(@screen_name, {:count => 20})
			  
		if not @resultados
			@resultados = Array.new
		end

		if @resultados and not @resultados.empty?
			@imagem_perfil = @resultados[0].user.profile_image_url
		else
			@imagem_perfil = Twitter.user(@screen_name).profile_image_url
		end
	end

end
