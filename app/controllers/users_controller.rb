class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
  if user.save
    redirect_to '/'
    session[:user_id] = user.id
  else
    redirect_to 'signup'
  end   


end
private

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end
end