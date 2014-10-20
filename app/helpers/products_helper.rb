module ProductsHelper
	def show_url_images(id)
		products = Admin::Product.find_by_id(id)
		return products.images.url
	end
end