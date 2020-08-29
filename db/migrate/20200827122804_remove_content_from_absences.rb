class RemoveContentFromAbsences < ActiveRecord::Migration[6.0]
  def change
    remove_column :absences, :content, :string
  end
end
