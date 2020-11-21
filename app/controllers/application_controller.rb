class ApplicationController < ActionController::API
  # protect_from_forgery with: :null_session

    # before_action :redirect_if_not_logged_in
    # helper_method :current_user, :logged_in?
  
    # private
  
    # def current_user
    #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    # end
  
  #  [need to insert #logged_in? code here]
  
    # def redirect_if_not_logged_in
    #   redirect_to login_path if !logged_in?
    # end


end
