class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[6.1]
  def  def up
         change_column :users, :phone_num, :string
  end

end
