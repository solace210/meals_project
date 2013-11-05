class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.integer :days
      t.integer :number_ingrediants
      t.text :list_ingrediants

      t.timestamps 
    end
  end
end
