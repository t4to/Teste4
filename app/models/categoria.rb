class Categoria < ActiveRecord::Base
	belongs_to :area, :foreign_key => 'area_id'
	
	has_many :perfis, :dependent => :destroy
	
	validates_presence_of :nome, :message => ' deve ser preenchido.'	
	
	validates_presence_of :area_id, :message => 'deve ser selecionado.'
	validates_presence_of :area
	validates_associated :area

	validates_uniqueness_of :nome, :case_sensitive => false, :scope => [:area_id]
end
