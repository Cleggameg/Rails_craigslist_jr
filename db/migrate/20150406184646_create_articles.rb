class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :email
      t.string :title
      t.string :body
      t.integer :cost_in_dollars
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
