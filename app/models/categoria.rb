class Categoria < ActiveRecord::Base
	belongs_to :area, :foreign_key => 'area_id'
	
	has_many :perfis, :dependent => :destroy
end
