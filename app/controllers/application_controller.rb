class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
  
<<<<<<< HEAD
  private
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
=======
  protected

    # throw an exception if not in ssl
    def ensure_proper_protocol
      if !ssl_allowed? && ssl_required? && !request.ssl? && !(request.get? || request.head?)
        raise 'SSL required!' # either we have a bug somewhere or someone is playing with us.
      else
        super
      end
    end

  private
    # returns true on production
    def ssl_required?
      return false if ENV['SSL_PROTOCOL'] == 'http'
      super
    end
  
  # helper method for using user object
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
>>>>>>> 53a75de68dd6fca626b398c21d1923a2b7056408

end
