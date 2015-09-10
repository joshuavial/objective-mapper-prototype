class SiteController < ApplicationController
  def index
  end

  def login_form
  end

  def login
    if params[:login][:password] == ENV['SECRET_CODE']
      session[:logged_in] = true
      redirect_to root_path
    else
      @message = 'You call that a secret code!? Meh.'
      render :login_form
    end
  end

  def logout
    session.delete(:logged_in)
    redirect_to root_path
  end

end
