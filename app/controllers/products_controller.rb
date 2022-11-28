require 'httparty'
class ProductsController < ApplicationController
    
    def index 
        response = HTTParty.get 'http://127.0.0.1:3000/api/v1/products' , headers: {'Accept': 'application/json'}
        render json: response
    end
    def show 
        product = Product.find(params[:id])
        render json: {status: :ok ,message: 'loaded products' ,data:product }
    end

    def create 
        user_data = product_params
        response = HTTParty.post("http://127.0.0.1:3000/api/v1/products", headers: { 'Accept' => 'application/json' }, body: user_data)
        render json: response
    end
   
    private 

    def product_params
        
        params.require(:product).permit(:name , :price , :quantity , :category_id)
    end
    end
