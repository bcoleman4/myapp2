json.array!(@welcome_pages) do |welcome_page|
  json.extract! welcome_page, :id
  json.url welcome_page_url(welcome_page, format: :json)
end
