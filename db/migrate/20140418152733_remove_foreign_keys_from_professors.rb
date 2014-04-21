class RemoveForeignKeysFromProfessors < ActiveRecord::Migration
  def change
    remove_column :professors, :subject_id, :integer
    remove_column :professors, :course_id, :integer
  end
end
