class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.string :family_name
      t.string :img
      t.string :flower_color
      t.string :foliage_texture
      t.string :foliage_color
      t.string :growth_period
      t.string :bloom_period
      t.string :shade_tolerance
      t.string :temperature_minimum
      t.string :ph_minimum
      t.string :ph_maximum
      t.string :drought_tolerance
      t.string :duration
      t.string :mature_height
      t.string :plant_type
      t.integer :growability

      t.timestamps
    end
  end
end
