class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :title
      t.text :description
      t.references :portfolio_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
