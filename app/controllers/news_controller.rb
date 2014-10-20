class NewsController < ApplicationController
	before_filter :set_my_variables
	before_action :set_news, only: [:show]

	def index
		@category = Newscatalog.find_by_url( params[:url] )

		@news = News.where(newscatalog_id: @category.id)

		@menu_active = @category.url
		@page_title = @category.page_title
		@page_description = @category.page_description
		@page_keyword = @category.page_keyword
	end

	def show
		@news_related = News.all
	end

	private
	def set_news
  		@news = News.find(params[:id])
	end
end