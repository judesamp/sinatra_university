class RemoveSubjectIdKeyFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :subject_id, :integer
  end
end
