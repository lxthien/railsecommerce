module Admin
  class ProductcatsController < ResourceController 
    before_action :set_productcats, only: [:show, :edit, :update, :destroy]
    helper ProductcatsHelper

    def index
      @productcats = Productcat.all
    end

    def list_by_cat
      @productcats = Productcat.where(parentcat_id: params[:id])
    end

    private
    def permitted_params
      params.permit(:productcat => [:parentcat_id, :name, :url, :description, :images, :isHot, :position, :page_description, :page_keyword])
    end

    def set_productcats
      @productcats = Productcat.find(params[:id])
    end

  end
end