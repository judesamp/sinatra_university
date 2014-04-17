class AddCoursesTable < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :name
      t.integer :course_number
      t.string  :last_semester_taught
      t.string  :next_semester_taught 
      t.integer :subject_id
      t.integer :professor_id
    end
  end
end
