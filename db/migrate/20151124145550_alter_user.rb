class AlterUser < ActiveRecord::Migration
  def change
    change_column :users, :password, :
  end
end
