class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :string
      t.string :password
      t.string :string
      t.string :gender
      t.string :string
      t.string :contact
      t.string :text
      t.string :about
      t.string :text
      t.references :content, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
