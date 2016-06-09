get "/posts/:post_id/comments" do
  comments = Comment.where(post_id: params[:post_id])
  # json = comments.to_json
  # binding.pry
  if request.xhr?
    content_type :json
    p comments.to_json
  else
    419
  end
end

post "/posts/:post_id/comments" do
  comment = Comment.new(params[:comment].merge(post_id: params[:post_id]))
  if comment.save
    content_type :json
    comment.to_json
  else
    status 422
  end
end
