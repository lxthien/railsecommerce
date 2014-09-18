json.array!(@newscatalogs) do |newscatalog|
  json.extract! newscatalog, :id, :parentcat_id, :name, :url, :description, :position, :page_title, :page_description, :page_keyword
  json.url newscatalog_url(newscatalog, format: :json)
end
