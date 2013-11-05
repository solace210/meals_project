class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :rating
      t.text :body
      t.references :meal, index: true

      t.timestamps
   end
  end
end
