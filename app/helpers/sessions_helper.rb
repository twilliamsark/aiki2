module SessionsHelper
  def sign_in(user, timeout_minutes=30)
    remember_token = User.new_remember_token
    cookies[:remember_token] = {
      value: remember_token,
      expires: timeout_minutes.minutes.from_now
    }
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
    @current_user = nil
    AppLogging.say('Using remember_token cookie to find current user') do
      remember_token = User.encrypt(cookies[:remember_token])
      if remember_token
        @current_user = User.find_by(remember_token: remember_token)
        AppLogging.say("#{@current_user.nil? ? 'Did not find user' : 'Found user ' + @current_user.id.to_s}", 1)
      else
        AppLogging.say('Could not find unexpired remember_token cookie', 1)
      end
    end
    @current_user
  end

  def current_user?(user)
    user == current_user
  end

  def demo_user?
    current_user.demo?
  end

  def signed_in_user
    if Rails.env.production? || (Rails.env.development? && DEVELOPMENT_REQUIRE_LOGIN)
      AppLogging.say("Require signed in user for #{request.url}")
      signin_check
    elsif Rails.env.development? && !DEVELOPMENT_REQUIRE_LOGIN
      user = User.find_by_email(DEVELOPMENT_LOGIN)
      if user
        sign_in(user, 3000)
      else
        signin_check
      end
    end
  end

  def redirect_back_or(default)
    return_to = session[:return_to] || default
    AppLogging.say("Redirect to stored location #{return_to}") if session[:return_to]
    redirect_to(return_to)
    session.delete(:return_to)
  end

  def store_location
    AppLogging.say("Store location for future redirect #{request.url}") if request.get?
    session[:return_to] = request.url if request.get?
  end

  def signin_check
    unless signed_in?
      store_location
      redirect_to signin_url
    end
  end
end
