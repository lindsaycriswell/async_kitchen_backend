class RecipeMealsController < ApplicationController
  before_action :set_recipe_meal, only: [:update, :destroy]

  # def index
  #   recipe_meals = RecipeMeal.all
  #   render json: recipe_meals, status: 200
  # end

  def create
    recipe_meal = RecipeMeal.create(recipe_meal_params)
    render json: recipe_meal, status: 201
  end

  def update
    @recipe_meal.update(recipe_meal_params)
    render json: @recipe_meal, status: 200
  end

  def destroy
    recipe_mealId = @recipe_meal.id
    @recipe_meal.destroy
    render json: {message:"RecipeMeal deleted"}
  end

  # def show
  #   render json: @recipe_meal, status: 200
  # end

  private
  def recipe_meal_params
    params.permit(:id, :recipe_id, :meal_id)
  end

  def set_recipe_meal
    @recipe_meal = RecipeMeal.find(params[:id])
  end
end
