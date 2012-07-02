class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_user, :only => [:index,:new,:edit]

   private
 
  # Make the current user object available to views
  #----------------------------------------
  def get_user
    @current_user =  current_admin || current_user
  end

  def authenticate_user_or_admin!
    unless admin_signed_in? || user_signed_in?
      authenticate_user!
    end
  end
end
