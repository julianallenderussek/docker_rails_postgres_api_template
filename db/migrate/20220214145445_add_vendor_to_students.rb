class AddVendorToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :vendor, null: false, type: :uuid
  end
end

