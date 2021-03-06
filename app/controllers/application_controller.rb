class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Prevent access to any action is any controller that is a subclass.
  # Blacklist - Deny access by default.
  before_action :authenticate_user!

  # Redirects to the current user show view after
  # login
  def after_sign_in_path_for(resource)
    # resource will be the current_user
    user_path(resource)
  end
end
