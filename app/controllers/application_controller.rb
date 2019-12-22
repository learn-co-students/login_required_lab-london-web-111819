class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :require_login

  def hello
    # redirect_to controller: 'sessions', action: 'new' unless session[:name]
    # redirect_to '/login' unless session[:name]
    redirect_to login_form_path unless session[:name]
  end

  def require_login
    # return head(:forbidden) unless session.include? :name
    redirect_to login_form_path unless session.include? :name
  end

  def current_user
    return session[:name] || nil
  end
  
end