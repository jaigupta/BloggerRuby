json.array!(@comments) do |comment|
  json.extract! comment, :id, :author_name
  json.url comment_url(comment, format: :json)
end
