class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameteras, if: :devise_controller?
  
  private
  def configure_permitted_parameteras
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :profile, :occupation, :position])
  end
end
