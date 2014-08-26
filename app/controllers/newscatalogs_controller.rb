class NewscatalogsController < ApplicationController
  before_action :set_newscatalog, only: [:show, :edit, :update, :destroy]

  # GET /newscatalogs
  # GET /newscatalogs.json
  def index
    @newscatalogs = Newscatalog.all
  end

  # GET /newscatalogs/1
  # GET /newscatalogs/1.json
  def show
  end

  # GET /newscatalogs/new
  def new
    @newscatalog = Newscatalog.new
  end

  # GET /newscatalogs/1/edit
  def edit
  end

  # POST /newscatalogs
  # POST /newscatalogs.json
  def create
    @newscatalog = Newscatalog.new(newscatalog_params)

    respond_to do |format|
      if @newscatalog.save
        format.html { redirect_to @newscatalog, notice: 'Newscatalog was successfully created.' }
        format.json { render :show, status: :created, location: @newscatalog }
      else
        format.html { render :new }
        format.json { render json: @newscatalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newscatalogs/1
  # PATCH/PUT /newscatalogs/1.json
  def update
    respond_to do |format|
      if @newscatalog.update(newscatalog_params)
        format.html { redirect_to @newscatalog, notice: 'Newscatalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @newscatalog }
      else
        format.html { render :edit }
        format.json { render json: @newscatalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newscatalogs/1
  # DELETE /newscatalogs/1.json
  def destroy
    @newscatalog.destroy
    respond_to do |format|
      format.html { redirect_to newscatalogs_url, notice: 'Newscatalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newscatalog
      @newscatalog = Newscatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newscatalog_params
      params.require(:newscatalog).permit(:parentcat_id, :name, :description, :content, :position, :page_description, :page_keyword)
    end
end
