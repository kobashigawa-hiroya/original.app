class AddcolumnsToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :app, foreign_key: true
    add_column :contacts, :my_contact, :boolean
  end
end
