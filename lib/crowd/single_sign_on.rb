class Crowd
  
  '''
  The single sign on (SSO) functionality. 
  To use this module, include it in your Rails ApplicationController class.
  '''
  module SingleSignOn
      
    '''
    Returns whether the user is already authenticated.
    '''
    def crowd_authenticated?
      logger.info "Crowd: All cookies: #{cookies.inspect}"
      
      token = crowd_token
      if token.blank?
        logger.info "Crowd: No token"
        return false
      end
      
      if crowd_authentication_cached?
        logger.info "Crowd: Authentication is cached"
        return true
      else 
        logger.info "Crowd: Authentication is not cached"
      end      
      
      if Crowd.is_valid_principal_token?(token)
        logger.info "Crowd: Token is valid"      
        crowd_mark_session_as_authenticated(token)
        return true
      else 
        logger.info "Crowd: Token is invalid"      
        return false
      end
    end
      
    '''
    Authenticates the user with the given user name and password and 
    marks the user as authenticated on success.
    
    Returns the crowd token on success, false on failure.
    '''
    def crowd_authenticate(user_name, password)      
      begin
        crowd_authenticate!(user_name, password)
      rescue Crowd::AuthenticationException => e
        false
      end
    end

    '''
    Same as #crowd_authenticate, but raises an AuthenticationException on failure.
    '''
    def crowd_authenticate!(user_name, password)
      logger.info "Crowd: Authenticating user #{user_name}"
      token = Crowd.authenticate_principal(user_name, password)
      crowd_mark_session_as_authenticated(token)      
      token
    end  
    
    private

    '''
    Whether a successful authentication was cached.
    '''
    def crowd_authentication_cached?
      last_validation = session[Crowd.crowd_session_lastvalidation]

      if last_validation.present? && crowd_caching_enabled?
        time_diff = crowd_time_diff_in_minutes(Time.now,  last_validation)
        return time_diff < Crowd.crowd_session_validationinterval
      else
        return false
      end      
    end
    
    '''
    Marks the session as successfully authenticated and sets the SSO cookie.
    '''
    def crowd_mark_session_as_authenticated(token)
      session[Crowd.crowd_session_tokenkey] = token
      cookies[Crowd.crowd_session_tokenkey] = { :value	=> token, :domain => crowd_cookie_domain, :path => "/" }
      if crowd_caching_enabled?
        logger.info "Crowd: Caching authentication"
        session[Crowd.crowd_session_lastvalidation] = Time.now
      end
    end    

    def crowd_cookie_domain
      request.domain ? "." + request.domain : nil
    end

    '''
    Returns the difference between two timestamps in minutes.
    '''
    def crowd_time_diff_in_minutes(first_time, second_time)
      (first_time - second_time).round / 1.minute
    end
    
    '''
    Whether caching of successful authentication is enabled.
    '''
    def crowd_caching_enabled?
      Crowd.crowd_session_validationinterval > 0
    end    

    '''
    Returns the crowd token or nil.
    '''
    def crowd_token
      logger.info "params: #{params[Crowd.crowd_session_tokenkey]}"
      logger.info "params: #{cookies[Crowd.crowd_session_tokenkey]}"
      logger.info "params: #{session[Crowd.crowd_session_tokenkey]}"
      token = params[Crowd.crowd_session_tokenkey] || cookies[Crowd.crowd_session_tokenkey] || session[Crowd.crowd_session_tokenkey]
      logger.info "token = #{token}"
      token
    end
    
  end  
end
