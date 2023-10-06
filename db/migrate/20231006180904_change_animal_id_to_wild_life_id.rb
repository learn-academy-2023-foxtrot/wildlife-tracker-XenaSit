class ChangeAnimalIdToWildLifeId < ActiveRecord::Migration[7.0]
  def change
    rename_column :sightings, :animal_id, :wild_life_id
  end
end
