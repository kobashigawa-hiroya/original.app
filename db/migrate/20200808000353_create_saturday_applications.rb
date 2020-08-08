class CreateSaturdayApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :saturday_applications do |t|
      t.time :time
      t.string :content
      t.date :date
      t.integer :app_id

      t.timestamps
    end
  end
end
