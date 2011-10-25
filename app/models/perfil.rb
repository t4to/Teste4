class Perfil < ActiveRecord::Base
belongs_to :categoria, :foreign_key => 'categoria_id'
end
