module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token # Permanent cookie to remember user
    # Timely cookie
    #cookies[:remember_token] = { value:   remember_token,
    #                             expires: 5.days.from_now.utc }
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token) # If not initialized fetch user from database based on cookie
  end
  
  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.digest(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
  
end