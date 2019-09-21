class ApplicationController < ActionController::Base

  #redirect and flash notification in case of user trying to do something they're not authorised to
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, alert: exception.message
end
end
