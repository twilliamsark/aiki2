class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper
  require 'app'
  include App
  require 'app_logging'
  include AppLogging
  require 'video_utils'
  include VideoUtils

  helper :exhibits

  def authenticate_admin_user!
    redirect_to root_path unless admin_signed_in?
  end
end
