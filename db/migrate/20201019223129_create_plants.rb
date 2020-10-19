class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :height
      t.integer :light
      t.string :water_frequency

      t.timestamps
    end
  end
end
