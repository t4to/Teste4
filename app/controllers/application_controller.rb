# coding: utf-8
class ApplicationController < ActionController::Base
	before_filter :prepare_for_mobile
	
	protect_from_forgery

	include AssuntosHelper
	include AreasHelper
	include CategoriasHelper
	include PerfisHelper
	
	private
	
	def mobile_device?
		request.user_agent =~ /Mobile|webOS|SymbOS|SymbianOS/ #|Opera|SymbOS|SymbianOS|Android/
	end

	helper_method :mobile_device?

	def prepare_for_mobile
		request.format = :mobile if mobile_device?
	end
end
