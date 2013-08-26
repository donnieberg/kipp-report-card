class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :number
      t.integer :rater_id
      t.string :rater_type
      t.integer :student_id
      t.integer :char_strength_id

      t.timestamps
    end
  end
end
