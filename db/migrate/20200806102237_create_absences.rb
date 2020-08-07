class CreateAbsences < ActiveRecord::Migration[6.0]
  def change
    create_table :absences do |t|
      t.string :content
      t.integer :app_id
      t.string :title, default: "その他"
      t.date :date, null: false

      t.timestamps
    end
  end
end
