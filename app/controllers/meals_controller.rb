class MealsController < ApplicationController

	def new
	@meal = Meal.new
	end
	
	def create
	
		@meal = Meal.new(params[:meal].permit(:title, :days, :number_ingrediants, :list_ingrediants))
	
		if @meal.save
		redirect_to @meal
		else
			render 'new'
		end
	end
	
	
	def show
		@meal = Meal.find(params[:id])
	end
	
	
	def index
		@meals = Meal.all
	end
	
	def edit
		@meal = Meal.find(params[:id])
	end
	
	def destroy
		@meal = Meal.find(params[:id])
		@meal.destroy
		
		redirect_to meals_path
	end
	
	def update
		@meal = Meal.find(params[:id])
		
		if @meal.update(params[:meal].permit(:title, :days, :number_ingrediants, :list_ingrediants))
			redirect_to @meal
		else
			render 'edit'
		end
	end
	
	
	
	
	private
		def meal_params
			params.require(:meal).permit(:title, :days, :number_ingrediants, :list_ingrediants)
	end
	
	
end
