
module Api
    module V1
        class ProductsController < ApplicationController
        before_action :set_product, only: [ :update, :destroy,:show]

    def index 
         products = Product.order(created_at: :desc)
         render json: {status: 'success' ,message: 'loaded products' ,data:products }  
    end
    
    def show 
        render json: {status: :ok ,message: 'loaded products' ,data:product }
    end

    def create 
        product = Product.new(product_params)
        product.save
        render json: {status: 'success' ,message: 'saved products' ,data:product } 
    end

    def destroy 
        product.destroy
        render json: {status: 'success' ,message: 'deleted product' ,data:product } 
     end
     def update 
        product.update(product_params)
        render json: {status: 'success' ,message: 'updated product' ,data:product } 
     end
     def search 
         product = Product.find_by(params.require(:product).permit(:name))
         render json: {status: 'success' ,message: 'saved products' ,data:product } 

     end
     def product_by_price
        products = Product.order(created_at: :desc).lowPrice
        render json: {status: 'success' ,message: 'saved products' ,data:products } 
     end
    private 

    def product_params
        
        params.require(:product).permit(:name , :price , :quantity , :category_id)
    end
    def set_product
        product = Product.find(params[:id])
    end
    end
   end
end