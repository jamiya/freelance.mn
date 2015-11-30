class CreateUserFocus < ActiveRecord::Migration
  def change
    create_table :user_focus do |t|
      t.references :user, index: true, foreign_key: true
      t.references :focus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
