json.array!(@posts) do |post|
  json.extract! post, :id, :title, :details, :author, :author_details
  json.url post_url(post, format: :json)
end
