module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  def force_to_log
    if !logged_in?
      redirect_to login_path
    end
  end
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
