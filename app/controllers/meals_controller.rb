class MealsController < ApplicationController
  before_action :set_meal, only: [:update, :destroy]

  def index
    meals = Meal.all
    render json: meals, status: 200
  end

  def create
    meal = Meal.create(meal_params)
    render json: meal, status: 201
  end

  def update
    @meal.update(meal_params)
    render json: @meal, status: 200
  end

  def destroy
    mealId = @meal.id
    @meal.destroy
    render json: {message:"Meal deleted"}
  end

# placeholder for current meal - update with meal ID
  def current
    @meal = Meal.last
    render json: @meal, status: 200
  end

  def show
    render json: @meal, status: 200
  end

  def remove_recipe
    RecipeMeal.find_by(recipe_id: params["recipe_id"], meal_id: params["meal_id"]).destroy

    render json: {message: "IT WORKEDDD"}
  end

  private
  def meal_params
    params.permit(:id, :user_id, :name)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
