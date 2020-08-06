class CreateAdsences < ActiveRecord::Migration[6.0]
  def change
    create_table :adsences do |t|
      t.string :content
      t.integer :app_id

      t.timestamps
    end
  end
end
