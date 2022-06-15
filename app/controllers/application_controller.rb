class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :get_languages

    # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

      # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  #Make sure your production DOMAIN variable is set with your domain name. If you deploy your code with Heroku for instance, just type in your terminal:
  #heroku config:set DOMAIN=www.my_product.com
  #You can check it's properly set with heroku config:get DOMAIN.

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end

  def get_languages
    @languages = Language.all
  end
  # include Pundit::Authorization

  # # Pundit: white-list approach
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # # Uncomment when you *really understand* Pundit!
  # # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # # def user_not_authorized
  # #   flash[:alert] = "You are not authorized to perform this action."
  # #   redirect_to(root_path)
  # # end

  # private

  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end
