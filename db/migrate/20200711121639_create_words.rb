class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :Myfile
      t.string :title
      t.string :filename
      t.string :comment

      t.timestamps
    end
  end
end
