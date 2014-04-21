class AddBuildingTable < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :number_of_rooms
    end
  end
end
