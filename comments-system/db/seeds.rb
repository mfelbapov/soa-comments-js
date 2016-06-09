content_for_comments = [
  { :user_id => 1,
    :post_id => 1,
    :content  => "AAAAAAAAAAAAAAAAAAA"},
  { :user_id => 1,
    :post_id => 1,
    :content  => "YYYYYYYYYYYYYYYYYY"},
  { :user_id => 1,
    :post_id => 1,
    :content  => "XXXXXXXXXXXXXXXX"},
  { :user_id => 1,
    :post_id => 2,
    :content  => "YYYYYYYYYYYYYYYYYY"},
  { :user_id => 1,
    :post_id => 2,
    :content  => "XXXXXXXXXXXXXXXX"}
]

Comment.create!(content_for_comments)
