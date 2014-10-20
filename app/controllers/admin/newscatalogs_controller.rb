module Admin
	class NewscatalogsController < ResourceController
		before_action :set_newscatalogs, only: [:show, :edit, :update, :destroy]
		def index
			@newscatalogs = Newscatalog.all
		end

		def show
			
		end

		def new
			@newscatalogs = Newscatalog.new
		end

		def edit
			
		end

		def create
		    @newscatalogs = Newscatalog.new(newscatalogs_params)

		    respond_to do |format|
		    	if @newscatalogs.save
		        	format.html { redirect_to @newscatalogs, notice: 'News was successfully created.' }
		        	format.json { render :show, status: :created, location: @newscatalogs }
		      	else
		        	format.html { render :new }
		        	format.json { render json: @newscatalogs.errors, status: :unprocessable_entity }
		      end
		    end
		end

		def update
		    respond_to do |format|
		       	if @newscatalogs.update(newscatalogs_params)
		        	format.html { redirect_to @newscatalogs, notice: 'News was successfully updated.' }
		        	format.json { render :show, status: :ok, location: @newscatalogs }
		      	else
		        	format.html { render :edit }
		        	format.json { render json: @newscatalogs.errors, status: :unprocessable_entity }
		      end
		    end
		end

		private
		#def permitted_params
	    #  params.permit(:newscatalog => [:parentcat_id, :name, :url, :description, :position, :page_title, :page_description, :page_keyword])
	    #end

	    def set_newscatalogs
      		@newscatalogs = Newscatalog.find(params[:id])
    	end

    	def newscatalogs_params
      		params.require(:admin_newscatalog).permit(:parentcat_id, :name, :url, :description, :position, :page_title, :page_description, :page_keyword)
    	end
	end
end