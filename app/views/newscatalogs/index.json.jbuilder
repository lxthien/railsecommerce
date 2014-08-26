json.array!(@newscatalogs) do |newscatalog|
  json.extract! newscatalog, :id, :parentcat_id, :name, :description, :content, :position, :page_description, :page_keyword
  json.url newscatalog_url(newscatalog, format: :json)
end
