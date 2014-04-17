class AddSubjectsTable < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :professor_id
      t.integer :course_id
    end
  end
end
