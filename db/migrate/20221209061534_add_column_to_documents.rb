class AddColumnToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :name, :string
    add_column :documents, :description, :string
  end
end
