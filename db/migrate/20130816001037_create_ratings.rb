class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :number
      t.integer :rater_id
      t.integer :student_id

      t.timestamps
    end
  end
end
