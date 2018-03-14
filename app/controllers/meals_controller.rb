class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :destroy]

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

  def show
    render json: @meal, status: 200
  end

  private
  def meal_params
    params.permit(:id, :user_id, :name)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
