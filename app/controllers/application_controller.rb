class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  include SessionsHelper

  add_flash_types :success

  def require_login
    redirect_to new_session_path, notice: 'You must be logged' unless current_user
  end

  def not_logged
    redirect_to user_path(cookies[:current_user_id]), success: 'You already logged' if current_user
  end
end
