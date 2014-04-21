class AddBuildingIdColumnFromCourses < ActiveRecord::Migration
  def change
    add_column :courses, :building_id, :integer
  end
end
