class CreateCharStrengths < ActiveRecord::Migration
  def change
    create_table :char_strengths do |t|
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
