class AddcolumnsToAdsences < ActiveRecord::Migration[6.0]
  def change
    add_column :adsences, :title, :string, default: "その他"
    add_column :adsences, :date, :date, null: false
  end
end
