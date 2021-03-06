class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
    		if user && user.authenticate(params[:session][:password])
      			sign_in user
      			# redirect_back_or user
      			redirect_to root_url
    		else
      			flash.now[:danger] = 'Oops! You entered an invalid email/password combination.  Please try again.'
      			render 'new'
    	end
	end

	def destroy
    	sign_out
    	redirect_to root_url
  	end

end
