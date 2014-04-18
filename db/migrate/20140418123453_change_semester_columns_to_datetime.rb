class ChangeSemesterColumnsToDatetime < ActiveRecord::Migration
  def change
    change_column :courses, :last_semester_taught, :date
    change_column :courses, :next_semester_taught, :date
  end
end
