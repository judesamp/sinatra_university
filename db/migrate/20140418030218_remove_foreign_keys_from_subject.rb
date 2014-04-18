class RemoveForeignKeysFromSubject < ActiveRecord::Migration
  def change
    remove_column :subjects, :professor_id, :integer
    remove_column :subjects, :course_id, :integer
  end
end
