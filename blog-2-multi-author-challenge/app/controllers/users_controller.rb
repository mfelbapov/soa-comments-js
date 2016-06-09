get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    redirect to "/login"
  else
    erb :"users/new"
  end
end

get "/users/profile" do
  @user = User.find(params[:id])
  redirect to "/" unless current_user == @user
  erb :"users/show"
end