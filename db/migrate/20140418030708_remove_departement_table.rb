class RemoveDepartementTable < ActiveRecord::Migration
  def change
    drop_table :departments
  end
end
