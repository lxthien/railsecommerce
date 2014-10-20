class ProductsController < ApplicationController
	before_filter :set_my_variables
	helper ProductsHelper

	def getListTelephone
		
		listArrProductcat = Product.getListCategory(1)
		
		@products = Product.where(productcat_id: listArrProductcat)
	
	end

	def getListProductsByCat
		
		@productcats = Productcat.find_by_url( params[:url] )

		@products = Product.where(productcat_id: @productcats.id)

	end

	def getListCollection
		
		listArrProductcat = Product.getListCategory(2)
		
		@products = Product.where(productcat_id: listArrProductcat)
	
	end

	def search
		render :text => params[:value]
		@products = Product.search(params[:value])
	end
end