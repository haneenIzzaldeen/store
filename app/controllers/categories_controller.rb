class CategoriesController < ApplicationController

def index 
    response = HTTParty.get 'http://127.0.0.1:3000/api/v1/categories' , headers: {'Accept': 'application/json'}
    render json: response
end
