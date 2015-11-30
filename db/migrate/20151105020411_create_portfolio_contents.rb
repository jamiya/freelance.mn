class CreatePortfolioContents < ActiveRecord::Migration
  def change
    create_table :portfolio_contents do |t|
      t.references :portfolio, index: true, foreign_key: true
      t.references :content, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
