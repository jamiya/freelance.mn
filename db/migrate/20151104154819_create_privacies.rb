class CreatePrivacies < ActiveRecord::Migration
  def change
    create_table :privacies do |t|
      t.string :privacy_name

      t.timestamps null: false
    end
  end
end
