class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.float :body_temperature
      t.string :content
      t.references :post, null: false, foreign_key: true
      t.references :app, null: false, foreign_key: true

      t.timestamps
    end
    add_index :letters, [:post_id, :app_id], unique: true
  end
end
