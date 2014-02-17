module ApplicationHelper
  def login(user)
    session[:token] = user.session_token
    @current_user = user
  end

  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_session_token(session[:token])
  end

  def logout
    current_user.reset_session_token!
    session[:token] = nil
    # session[:last_visited] = nil
  end
end
