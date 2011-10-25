class Area < ActiveRecord::Base
	belongs_to :assunto, :foreign_key => 'assunto_id'
	
	has_many :categorias, :dependent => :destroy
	
	validates_presence_of :nome, :message => ' deve ser preenchido.'	
	
	validates_presence_of :assunto_id, :message => 'deve ser selecionado.'
	validates_presence_of :assunto
	validates_associated :assunto

	validates_uniqueness_of :nome, :case_sensitive => false, :scope => [:assunto_id]
end
