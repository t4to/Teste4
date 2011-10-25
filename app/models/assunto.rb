class Assunto < ActiveRecord::Base
	has_many :areas, :dependent => :destroy
	
	validates_presence_of :nome, :message => ' deve ser preenchido.'
	validates_presence_of :user, :message => ' deve ser preenchido.'
	validates_presence_of :info, :message => ' deve ser preenchido.'
end
