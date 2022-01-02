class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :phone_num, :integer
    add_column :users, :role, :string
    add_column :users, :active, :boolean
  end
end
