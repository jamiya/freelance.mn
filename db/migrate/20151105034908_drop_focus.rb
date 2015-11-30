class DropFocus < ActiveRecord::Migration
  def change
    drop_table :focus
  end
end
