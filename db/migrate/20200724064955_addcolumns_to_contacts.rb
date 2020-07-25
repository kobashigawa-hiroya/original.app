class AddcolumnsToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :app, null: false, foreign_key: true
    add_column :contacts, :my_contact, :boolean, default: false
  end
end
