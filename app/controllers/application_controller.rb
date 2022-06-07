class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :update_allowed_parameters, :if => :devise_controller?

    private
    def update_allowed_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :address, :username, :phone)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :address, :username, :phone)}
      end
end
