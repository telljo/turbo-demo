class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.string :body
      t.string :author
      t.integer :likes_count, default: 0, null: false

      t.timestamps
    end
  end
end
