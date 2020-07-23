class AddDetailsToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :snack_content, :text
    add_column :menus, :snack_image, :string
  end
end
