get "/session/new" do
  erb :"sessions/new"
end

post "/session" do
  # find the user by email
  user = User.find_by(email: params[:email])

  if user.authenticate(params[:password])
    # set the user's id in the session
    session[:user_id] = user.id
    redirect "/"
  else
    erb :"sessions/new"
  end
end

delete "/session" do
  session.delete(:user_id)
  redirect "/"
end
