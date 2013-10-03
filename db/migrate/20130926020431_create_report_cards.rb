class CreateReportCards < ActiveRecord::Migration
  def change
    create_table :report_cards do |t|
      t.integer :student_id
      t.integer :quarter
      t.integer :year

      t.timestamps
    end
  end
end
