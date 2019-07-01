class SessionsController < ApplicationController
	def new
		
	end
	def create
		glsuser = Glsuser.find_by(email: params[:session][:email].downcase)
		if glsuser && glsuser.authenticate(params[:session][:password])
			flash[:success] = "You are successfully login"
			session[:glsuser_id] = glsuser.id
			redirect_to glsuser_path(glsuser)
		else
			flash[:danger] = "Login fail"
			render 'new'
		end
	end
	def destroy
		session[:glsuser_id] = nil
		flash[:success] = "You are successfully log out"
		redirect_to login_path
	end
end