class SessionsController < ApplicationController
  def new
    @page_title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @page_title = "Sign in"
      render 'new'
    else
      sign_in user
      if user.role_id == 1
        redirect_to full_listing_path 
      else
        redirect_back_or communities_path
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
