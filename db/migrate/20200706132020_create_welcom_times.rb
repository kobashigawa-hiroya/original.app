class CreateWelcomTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :welcom_times do |t|
      t.string :name
      t.datetime :time
      t.references :app, null: false, foreign_key: true

      t.timestamps
    end
  end
end
