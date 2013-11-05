class CommentsController < ApplicationController

	def create
		@meal = Meal.find(params[:meal_id])
		@comment = @meal.comments.create(params[:comment].permit(:body, :rating))
		redirect_to meal_path(@meal)
	end
	
	def destroy
	@meal = Meal.find(params[:meal_id])
	@comment = @meal.comments.find(params[:id])
	@comment.destroy
	redirect_to meal_path(@meal)
	
	end
end
