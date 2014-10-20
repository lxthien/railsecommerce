class IndexController < ApplicationController
	before_filter :set_my_variables

	def index
		@news = News.all
		@product_new = Product.where(isNew: 1)
		@product_hot = Product.where(isHot: 1)
		@product_telephone = Product.where(productcat_id: [3, 4, 5, 6])

		@menu_active = 'home'
	end

	def aboutus
		@about_us = News.find_by_id(14)

		@menu_active = 'about-us'
		@page_title = @about_us.page_title
		@page_description = @about_us.page_description
		@page_keyword = @about_us.page_keyword
	end

	config.paperclip_defaults = {:storage => :fog, :fog_credentials => {:provider => "Local", :local_root => "#{Rails.root}/public"}, :fog_directory => "", :fog_host => "localhost"}
end