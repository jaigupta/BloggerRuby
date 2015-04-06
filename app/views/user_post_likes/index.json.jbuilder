json.array!(@user_post_likes) do |user_post_like|
  json.extract! user_post_like, :id
  json.url user_post_like_url(user_post_like, format: :json)
end
