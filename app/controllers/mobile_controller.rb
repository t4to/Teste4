# coding: utf-8
class MobileController < ApplicationController
	def index
		@assunto = Assunto.first
		@titulo = @assunto.nome
	end

	def info
		@titulo = 'Informações'
		@assunto = Assunto.first
	end
	
	def lista_area
		@areas = Area.find_all_by_assunto_id params[:assunto_id]
		@titulo = 'Áreas'
	end

	def lista_categoria
		@categorias = Categoria.find_all_by_area_id params[:area_id]
		@area = Area.find_by_id params[:area_id]
		@titulo = @area.nome
	end

	def lista_perfil
		@perfis = Perfil.find_all_by_categoria_id params[:categoria_id]
		@categoria = Categoria.find_by_id params[:categoria_id]
		@titulo = @categoria.nome
	end

	def twitter
		if params[:parm].to_i.to_s != "0"
			@perfil = Perfil.find_by_id params[:parm]	#params[:perfil_id]
			@screen_name = @perfil.user
		else
			@screen_name = params[:parm]
		end
		
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
