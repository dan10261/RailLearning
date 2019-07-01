class AddressesController < ApplicationController
	before_action :set_address, only: [:edit, :update, :show, :destroy]
	def new
		#debugger
		@address = Address.new
		@address.glsuser_id = params[:glsuser_id]
		#@glsuser = Glsuser.find(params[:glsuser_id])
	end
	def create
		#debugger
		@address = Address.new(params_address)
		if @address.save
			flash[:success] = "A new address is successfully added for user" ##{@address.glsuser_id}
			redirect_to address_path(@address)
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		#debugger
		if @address.update(params_address)
			flash[:success] = "Address is successfully updated"
			redirect_to address_path(@address)
		else
			render 'edit'
		end
	end

	 def destroy
	    @address.destroy
	    flash[:danger] = "The address was successfully deleted."
	    redirect_to glsuser_path(@address.glsuser)
	  end

	def show
		
	end

	private
	def params_address
		params.require(:address).permit(:street1, :state, :city, :zip4, :zip5, :glsuser_id);
	end

	def set_address
		@address = Address.find(params[:id])
	end
end