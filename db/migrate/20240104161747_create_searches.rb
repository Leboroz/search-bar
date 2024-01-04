class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :content
      t.integer :quantity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :searches, :content, unique: true
  end
end
