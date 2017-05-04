class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
    def authorize
      redirect_to root_url, alert: "Not authorized" if !current_user.admin?
    end
end