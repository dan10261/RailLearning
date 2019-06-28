class GlsusersController < ApplicationController
  before_action :set_glsuser, only: [:edit, :show, :update, :destroy]

  #public methods
  def index
    @glsusers = Glsuser.all
  end

  def new
    @glsuser = Glsuser.new
  end

  def create
    @glsuser = Glsuser.new(glsuser_params)
    if @glsuser.save
      flash[:success] = "A user is successfully created."
      redirect_to glsuser_path(@glsuser)
    else
      render "new"
    end
  end

  def show
    #@glsuser = Glsuser.find(params[:id])
  end

  def edit
    #@glsuser = Glsuser.find(params[:id])
  end

  def update
    #@glsuser = Glsuser.find(params[:id])
    if @glsuser.update(glsuser_params)
      redirect_to glsuser_path(@glsuser)
      flash[:success]="The user is successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    #@glsuser = Glsuser.find(params[:id])
    @glsuser.destroy
    flash[:danger] = "The user was successfully deleted."
    redirect_to glsusers_path
  end
  #end public methods

  #private methods

  private

  def set_glsuser
    @glsuser = Glsuser.find(params[:id])
  end

  def glsuser_params
    params.require(:glsuser).permit(:username, :password, :firstname, :lastname)
  end

  #end private methods
end