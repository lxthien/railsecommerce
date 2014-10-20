module NewsHelper
	def show_url_images_news(id)
		news = Admin::News.find_by_id(id)
		return news.images.url
	end
end