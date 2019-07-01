class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	helper_method :current_glsuser, :logged_in?

	def current_glsuser
		@current_glsuser ||= Glsuser.find(session[:glsuser_id]) if session[:glsuser_id]
	end

	def logged_in?
		current_glsuser != nil
	end

	def require_glsuser
		if !logged_in?
			flash[:danger] = "you must login to perform that task"
			redirect_to root_path
		end
	end
end
