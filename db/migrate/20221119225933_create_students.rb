class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :default => "N/A"
      t.integer :age
      t.string :sex
      t.string :status
      t.uuid :profesor_id, :default => "N/A"
      t.uuid :salesman_id, :default => "N/A"
      t.string :marketing, :default => "N/A"
      t.string :country, :default => "N/A"
      t.string :city, :default => "N/A"
      t.string :location, :default => "N/A"
      t.string :phone, :default => "N/A"
    
      t.timestamps
    end
  end
end
