class IngredientsController < ApplicationController
  # before_action :set_ingredient, only: [:show]
  #   # :update, :destroy]
  #
  # def index
  #   ingredients = Ingredient.all
  #   render json: ingredients, status: 200
  # end
  #
  # # def create
  # #   ingredient = Ingredient.create(ingredient_params)
  # #   render json: ingredient, status: 201
  # # end
  # #
  # # def update
  # #   @ingredient.update(ingredient_params)
  # #   render json: @ingredient, status: 200
  # # end
  # #
  # # def destroy
  # #   ingredientId = @ingredient.id
  # #   @ingredient.destroy
  # #   render json: {message:"Ingredient deleted"}
  # # end
  #
  # def show
  #   render json: @ingredient, status: 200
  # end
  #
  # private
  # # def ingredient_params
  # #   params.permit(:id, ETC)
  # # end
  #
  # def set_ingredient
  #   @ingredient = Ingredient.find(params[:id])
  # end
end
