class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :report_card_id
      t.string  :author
      t.integer :grit
      t.integer :zest
      t.integer :school_work
      t.integer :interpersonal
      t.integer :optimism
      t.integer :gratitude
      t.integer :social_intelligence
      t.integer :curiosity

      t.timestamps
    end
  end
end
