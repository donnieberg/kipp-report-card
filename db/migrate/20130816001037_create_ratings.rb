class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :report_card_id
      t.string :author
      t.string :grit
      t.string :zest
      t.string :school_work
      t.string :interpersonal
      t.string :optimism
      t.string :gratitude
      t.string :social_intelligence
      t.string :curiosity

      t.timestamps
    end
  end
end
