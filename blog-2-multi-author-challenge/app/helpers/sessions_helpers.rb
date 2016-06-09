helpers do
  def current_user
    # find the user by user_id in the session if it's there
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
