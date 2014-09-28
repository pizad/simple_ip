class UsersController < ApplicationController

before_action :signed_in_user, only: [:edit, :update, :user_home]
before_action :correct_user,   only: [:edit, :update, :user_home]

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		sign_in @user
  		flash[:success] = "Welcome to Simple IP!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def user_home_page
  	@user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'  # this renders the edit view
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    def signed_in_user
      unless signed_in?
        store_location
      	redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
