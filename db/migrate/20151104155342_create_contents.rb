class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :path
      t.string :mime
      t.string :extension

      t.timestamps null: false
    end
  end
end
