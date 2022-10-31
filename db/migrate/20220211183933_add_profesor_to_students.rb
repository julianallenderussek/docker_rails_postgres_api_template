class AddProfesorToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :profesor, null: false, type: :uuid
  end
end
