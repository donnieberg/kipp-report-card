class AddQuarterToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :academic_quarter, :integer
  end
end

