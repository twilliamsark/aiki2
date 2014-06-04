module SessionsHelper
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.sign_in(remember_token: remember_token, ip: request.remote_ip)
    self.current_user = user
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def signed_in?
    !current_user.nil?
  end

  def admin_signed_in?
    !current_user.nil? && current_user.admin?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    return @current_user if @current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user = User.find_by(remember_token: remember_token)
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url
    end
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end
