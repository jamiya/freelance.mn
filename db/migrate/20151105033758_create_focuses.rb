class CreateFocuses < ActiveRecord::Migration
  def change
    create_table :focuses do |t|
      t.string :FocusName
      t.references :content

      t.timestamps null: false
    end
  end
end
