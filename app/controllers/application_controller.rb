# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  def check_aut
      if session[:user].blank?
            session[:intended_controller] = controller_name
            session[:intended_action] = action_name
            redirect_to :controller =>'user', :action => 'login'
      end
  end
  before_filter :check_aut, :except => [:login, :new, :logout]
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
