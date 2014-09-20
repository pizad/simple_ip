module SessionsHelper

	def sign_in(user)
    	remember_token = User.new_remember_token
    	cookies.permanent[:remember_token] = remember_token
    		# the method cookies.permanent[:remember_token] = remember_token
    		# implements a 'permanent' Ruby method that set the cookie duration to 20 years
    		# and is equivalent to --
    		# cookies[:remember_token] = { value:   remember_token,
            #                			 expires: 20.years.from_now.utc }
    	user.update_attribute(:remember_token, User.digest(remember_token))
    	self.current_user = user
	end

	def signed_in?
		!current_user.nil?
  	end

	def current_user=(user)
    	@current_user = user
  	end

  	def current_user
    	remember_token = User.digest(cookies[:remember_token])
    	@current_user ||= User.find_by(remember_token: remember_token)
  	end

  	def current_user?(user)
    	user == current_user
  	end

  	def redirect_back_or(default)
    	redirect_to(session[:return_to] || default)
		session.delete(:return_to)
  	end

  	def store_location
    	session[:return_to] = request.url if request.get?
  	end

  	def sign_out
    	current_user.update_attribute(:remember_token, User.digest(User.new_remember_token))
    	cookies.delete(:remember_token)
    	self.current_user = nil
  	end

end