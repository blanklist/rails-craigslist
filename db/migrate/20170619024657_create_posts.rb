class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :username
      t.string :title
      t.string :description
      t.integer :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
