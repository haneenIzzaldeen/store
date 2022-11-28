module Api
    module V1
      class CategoriesController < ApplicationController
      before_action :set_category, only: [ :update, :destroy,:show,:create]
 def index 
    categories = Category.order(created_at: :desc)
    render json: {status: 'success' ,message: 'loaded categories' ,data:categories } 
 end

def create 
    category = Category.new(category_params)
    category.save
end


def destroy 
    category.destroy
    render json: {status: 'success' ,message: 'deleted categories' ,data:product } 
 end

 def update 
    category.update(category_params)
    render json: {status: 'success' ,message: 'updated categories' ,data:product } 
 end

 def showProducts
    categories = Category.skin_care.first.products
    render json: {status: 'success' ,message: 'loaded categories' ,data:categories } 
 end

    private
    def category_params
        params.require(:category).permit(:name)
    end
    def set_category
        category = Category.find(params[:id])
    end
  end
 end
end