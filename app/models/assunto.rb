class Assunto < ActiveRecord::Base
	has_many :areas, :dependent => :destroy
end
