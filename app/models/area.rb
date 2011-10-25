class Area < ActiveRecord::Base
	belongs_to :assunto, :foreign_key => 'assunto_id'
	
	has_many :categorias, :dependent => :destroy
end
