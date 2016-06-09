# route handlers dealing with the collection
get '/entries' do
  @entries = Entry.most_recent
  erb :'entries/index'
end

post '/entries' do
  redirect to "/" unless current_user
  @entry = current_user.entries.new(params[:entry])

  if @entry.save
    redirect "/entries/#{@entry.id}"
  else
    @errors = @entry.errors.full_messages
    erb :'entries/new'
  end
end

get '/entries/new' do
  redirect to "/" unless current_user
  erb :'entries/new'
end


# route handlers dealing with a specific entry
before '/entries/:id' do
  find_and_ensure_entry
end

get '/entries/:id' do
  erb :'entries/show'
end

get '/entries/:id/edit' do
  redirect to "/" unless current_user

  @entry = current_user.entries.find(params[:id])

  erb :'entries/edit'
end

put '/entries/:id' do
  redirect to "/" unless current_user
  @entry = current_user.entries.find(params[:id])

  @entry.assign_attributes(params[:entry])

  if @entry.save
    redirect "entries/#{@entry.id}"
  else
    @errors = @entry.errors.full_messages
    erb :'entries/edit'
  end
end

delete '/entries/:id' do
  redirect to "/" unless current_user

  @entry = current_user.entries.find(params[:id])
  @entry.destroy
  redirect '/entries'
end

