class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
