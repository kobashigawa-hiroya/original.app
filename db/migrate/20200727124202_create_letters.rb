class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.integer :bodytemperature
      t.string :content
      t.integer :app_id

      t.timestamps
    end
  end
end
