class CreatePetRocks < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_rocks do |t|
      t.string :name
      t.belongs_to :koala

      t.timestamps
    end
  end
end
