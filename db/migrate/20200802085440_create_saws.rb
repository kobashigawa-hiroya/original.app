class CreateSaws < ActiveRecord::Migration[6.0]
  def change
    create_table :saws do |t|
      t.integer :app_id, null: false, index:true
      t.integer :post_id, null: index: true

      t.timestamps
    end

    add_index :saws,[:app_id, :post_id], unique: true
  end
end
