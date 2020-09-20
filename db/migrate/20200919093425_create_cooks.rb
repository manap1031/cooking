class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.string :recipe_name
      t.string :recipe
 
      t.timestamps
    end
  end
end
