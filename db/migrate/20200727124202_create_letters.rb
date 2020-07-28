class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.integer :body_temperature
      t.string :content
      t.boolean :like, default: false
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
