class AddProfessorsTable < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :first_name
      t.integer :last_name
      t.boolean :yrs_experience
      t.integer :course_id
      t.integer :subject_id
    end
  end
end
