class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  existing_user = User.find_by(email: user_registration_params[:email])
  if existing_user
    flash[:error] = "Użytkownik o podanym adresie e-mail już istnieje."
    redirect_to new_user_path
  else
    @user = User.new(user_registration_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end
end

private
def user_registration_params
  base_params = params.require(:user).permit(:email)
  password = params.require(:user).permit(:password)
  base_params.merge(password: password[:password])
end

def user_params
params.require(:user).permit(:email, :password, :password_confirmation)
end
end
