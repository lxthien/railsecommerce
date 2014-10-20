module Admin
	class NewsController < ResourceController
		before_action :set_news, only: [:show, :edit, :update, :destroy]
		before_filter :set_my_variables
		def index
			@news = News.all
		end

		def new
			@news = News.new
		end

		def create
			@news = News.new(news_params)

  			respond_to do |format|
		    	if @news.save
		        	format.html { redirect_to @news, notice: 'News was successfully created.' }
		        	format.json { render :show, status: :created, location: @news }
		      	else
		        	format.html { render :new }
		        	format.json { render json: @news.errors, status: :unprocessable_entity }
		      end
		    end
		end

		def update

			respond_to do |format|
		       	if @news.update(news_params)
		        	format.html { redirect_to @news, notice: 'News was successfully updated.' }
		        	format.json { render :show, status: :ok, location: @news }
		      	else
		        	format.html { render :edit }
		        	format.json { render json: @news.errors, status: :unprocessable_entity }
		      end
		    end
		end

		def destroy
			@news.destroy
	    	respond_to do |format|
		      	format.html { redirect_to @news, notice: 'News was successfully destroyed.' }
		      	format.json { head :no_content }
		    end
		end

		def delete
			@news.destroy
	    	respond_to do |format|
		      	format.html { redirect_to @news, notice: 'News was successfully destroyed.' }
		      	format.json { head :no_content }
		    end
		end

		private
		def set_news
      		@news = News.find(params[:id])
    	end

		def news_params
      		params.require(:admin_news).permit(:newscatalog_id, :title, :url, :images, :description, :content, :active, :recycle, :isComment, :isHot, :tag, :position, :page_title, :page_description, :page_keyword)
    	end
	end
end