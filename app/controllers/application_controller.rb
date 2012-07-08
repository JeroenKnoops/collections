class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Set GUID cookie.
  before_filter :set_GUID 
  
  protected
  
  # Set gg cookie for top domain.
  def set_GUID
    if cookies[:guid].blank?
      set_cookie :guid, UUIDTools::UUID.timestamp_create().to_s
    end
  end
  
  private
  
  def set_cookie(key, value)
    domain = Cookie.domain(request.host)
    cookies[key] = { :value => value,
                     :expires => 5.years.from_now,
                     :domain => domain
                   }
  end
  
  def delete_cookie(key)
    domain = Cookie.domain(request.host)
    cookies[key] = { :value => nil,
                     :expires => 1.year.ago,
                     :domain => domain
                   }
  end
  
  
end
