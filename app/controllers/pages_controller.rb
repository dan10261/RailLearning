class PagesController < ApplicationController
  #This is a comment
  def home
  	redirect_to glsusers_path if logged_in? #if user already login, then instead of going to home it goes to list users 
  end

  def about
  end
end