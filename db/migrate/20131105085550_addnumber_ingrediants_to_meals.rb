class AddnumberIngrediantsToMeals < ActiveRecord::Migration
  def change
  	add_column :meals, :number_ingrediants, :integer
  end
end
