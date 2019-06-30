class AddressesController < ApplicationController
	def new
		#debugger
		@address = Address.new
		@address.glsuser_id = params[:glsuser_id]
		@glsuser = Glsuser.find(params[:glsuser_id])
	end
	def create
		debugger
		@address = Address.new(params_address)
		if @address.save
			flash[:success] = "A new address is successfully added for user" ##{@address.glsuser_id}
			redirect_to glsusers_path
		else
			render 'new'
		end
	end

	private
	def params_address
		params.require(:address).permit(:street1, :state, :city, :zip4, :zip5, :glsuser_id);
	end
end