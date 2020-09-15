class AddImageToApps < ActiveRecord::Migration[6.0]
  def change
    add_column :apps, :image, :string
    add_column :apps, :title, :string
  end
end
