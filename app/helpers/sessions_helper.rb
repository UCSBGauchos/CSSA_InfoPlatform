module SessionsHelper
  def sign_in(user)
    # cookies.permanent[:remember_token]=user.remember_token
    session[:current_user_id] = user.id
    self.current_user=user
  end
  
  def signed_in?
    !current_user.nil?
  end  
  def current_user=(user)
    @current_user=user
  end
  
  def current_user
    # @current_user ||= User.find_by_remember_token(cookies[:remember_token])
    @current_user ||= session[:current_user_id]&& User.find_by_id(session[:current_user_id])
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def sign_out
    self.current_user = nil
    @current_user = session[:current_user_id] = nil
    # cookies.delete(:remember_token)
    
  end
  
  # if a non-logged user tries to vist edit before login, redirect to sign in then friendly direct to edit page instead of user home page
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
  def store_location
    session[:return_to] = request.fullpath
  end
  
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please signed in."
    end
  end
  
end
