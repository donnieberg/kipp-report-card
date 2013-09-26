class CreateReportCards < ActiveRecord::Migration
  def change
    create_table :report_cards do |t|
      t.integer :quarter
      t.integer :year

      t.timestamps
    end
  end
end
