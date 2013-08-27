class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.integer :school_id
      t.string :type
      t.integer :grade_level

      t.timestamps
    end
  end
end

