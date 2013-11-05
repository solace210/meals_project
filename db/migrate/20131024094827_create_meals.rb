class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.integer :days
      t.text :list_ingrediants

      t.timestamps 
    end
  end
end
