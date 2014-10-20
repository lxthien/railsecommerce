json.array!(@admin_newscatalogs) do |admin_newscatalog|
  json.extract! admin_newscatalog, :id, :parentcat_id, :name, :url, :description, :content, :position, :page_title, :page_description, :page_keyword
  json.url admin_newscatalog_url(admin_newscatalog, format: :json)
end
