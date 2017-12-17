module DeviseConcern
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
    layout :layout_by_resource
  end

  def layout_by_resource
    if  devise_controller?
      "auth"
    else
      "application"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name])
  end
end
