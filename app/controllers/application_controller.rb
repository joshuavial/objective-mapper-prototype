class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_login

  def require_login
    redirect_to '/' unless params[:controller] == 'site'
  end

  def logged_in?
    !!session[:logged_in]
  end

  helper_method :logged_in?
end
