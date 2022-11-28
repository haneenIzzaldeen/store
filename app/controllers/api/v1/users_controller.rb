
module Api
    module V1
       class UsersController < ApplicationController
        before_action :set_product, only: [ :update]
    def index 
        users = User.all.count
        render json: {status: 'success' ,message: 'loaded products' ,data:users }  
    end
    def create 
        user = User.new(user_params)
        user.save
        render json: {status: 'success' ,message: 'saved products' ,data:user } 
    end
    def update 
        user.update(user_params)
        render json: {status: 'success' ,message: 'updated product' ,data:user } 
    end
    

    private
    def user_params
        params.require(:user).permit(:name ,:password ,:role )
    end

    def set_user
        user = User.find(params[:id])
    end

       end
    end
end