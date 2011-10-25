class Perfil < ActiveRecord::Base
	belongs_to :categoria, :foreign_key => 'categoria_id'
	
	validates_presence_of :user, :message => ' deve ser preenchido.'
	validates_presence_of :nome, :message => ' deve ser preenchido.'
	
	validates_presence_of :categoria_id, :message => 'deve ser selecionado.'
	validates_presence_of :categoria
	validates_associated :categoria

	validates_uniqueness_of :nome, :case_sensitive => false, :scope => [:categoria_id]
end
