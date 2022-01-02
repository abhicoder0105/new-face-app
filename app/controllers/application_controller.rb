class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # params.require(:user).permit(:name, :surname, :phone_num, :role, :active, :email, :password, :password_confirmation)
    devise_parameter_sanitizer.permit(:user) { |u| u.permit(:name, :surname, :phone_num, :role, :active, :email, :password, :password_confirmation) }

  end
end
