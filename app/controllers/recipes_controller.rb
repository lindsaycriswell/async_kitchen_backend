class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
    # :update, :destroy]

  def index
    recipes = Recipe.all
    render json: recipes, status: 200
  end

  # def create
  #   recipe = Recipe.create(recipe_params)
  #   render json: recipe, status: 201
  # end
  #
  # def update
  #   @recipe.update(recipe_params)
  #   render json: @recipe, status: 200
  # end
  #
  # def destroy
  #   recipeId = @recipe.id
  #   @recipe.destroy
  #   render json: {message:"Recipe deleted"}
  # end

  def show
    render json: @recipe, status: 200
  end

  def display_recipes
    recipes = []

    Recipe.all.each do |recipe|
      if !Meal.last.recipes.include?(recipe)
        recipes << recipe
      end
    end

    render json: recipes, status: 200
  end

  def current_meal_recipes
    recipes = Meal.last.recipes

    render json: recipes, status: 200
  end

  private
  # def recipe_params
  #   params.permit(:id, :name, :course, :servings, :prep_time, :cook_time, :total_time, :url)
  # end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
