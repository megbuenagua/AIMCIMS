class CreateAdminStaffs < ActiveRecord::Migration
  def change
    create_table :admin_staffs do |t|
      t.integer :staff_number
      t.string :staff_name
      t.date :date_hired
      t.string :staff_position
      t.string :status

      t.timestamps
    end
  end
end
