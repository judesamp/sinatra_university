class RemoveSubjectTable < ActiveRecord::Migration
  def change
    drop_table :subjects
  end
end
