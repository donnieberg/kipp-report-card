class AddIdNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :id_number, :integer
  end
end
