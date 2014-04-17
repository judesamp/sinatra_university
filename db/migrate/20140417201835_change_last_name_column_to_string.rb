class ChangeLastNameColumnToString < ActiveRecord::Migration
  def change
    change_column :professors, :last_name, :string
  end
end
