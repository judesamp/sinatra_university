class ChangeYrsExperienceToInteger < ActiveRecord::Migration
  def change
    change_column :professors, :yrs_experience, :integer
  end
end
