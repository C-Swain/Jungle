class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  #method to authenticate user for login
  def self.authenticate_with_credentials(email, password)
    # this finds the user in our system
    user = User.find_by_email(email)
    # if there is a user we use the password to authenticate them 
    if user && user.authenticate(password)
      user
    else
      nil 
    end
  end

end