class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        root_path
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :bio, :location, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:location, :bio, :email, :password, :current_password) }
    end

    def not_found
        raise ActionController::RoutingError.new('Not Found')
    end

end




