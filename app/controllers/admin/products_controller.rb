module Admin
  class ProductsController < ResourceController 
    before_action :set_products, only: [:show, :edit, :update, :destroy]
    before_filter :set_my_variables
    config.paperclip_defaults = {:storage => :fog, :fog_credentials => {:provider => "Local", :local_root => "#{Rails.root}/public"}, :fog_directory => "", :fog_host => "localhost"}

    def new
      @products = Product.new
    end

    def create
      @products = Product.new(products_params)

        respond_to do |format|
          if @products.save
              format.html { redirect_to @products, notice: 'Products was successfully created.' }
              format.json { render :show, status: :created, location: @products }
            else
              format.html { render :new }
              format.json { render json: @products.errors, status: :unprocessable_entity }
          end
        end
    end

    def update
      respond_to do |format|
            if @products.update(products_params)
              format.html { redirect_to @products, notice: 'Products was successfully updated.' }
              format.json { render :show, status: :ok, location: @products }
            else
              format.html { render :edit }
              format.json { render json: @products.errors, status: :unprocessable_entity }
          end
        end
    end

    private
    def products_params
        params.require(:admin_product).permit(:productcat_id, :name, :url, :images, :description, :detail, :price, :promotionPrice, :finalPrice, :isNew, :isHot, :isSale, :page_title, :page_description, :page_keyword)
    end

    def set_products
      @products = Product.find(params[:id])
    end

  end
end