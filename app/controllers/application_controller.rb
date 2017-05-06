class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
    def authorize
      if logged_in?
        redirect_to root_url, alert: "Not authorized" if !current_user.admin?
      else
        redirect_to root_url, alert: "Not logged in"
      end
    end
end