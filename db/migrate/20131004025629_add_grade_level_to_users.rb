class AddGradeLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade_level, :integer
  end
end
