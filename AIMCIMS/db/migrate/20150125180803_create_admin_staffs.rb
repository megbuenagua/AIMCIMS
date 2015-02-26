class CreateAdminStaffs < ActiveRecord::Migration
  def change
    create_table :admin_staffs do |t|
      t.integer :staff_number
      t.string :name
      t.date :dateH_hired
      t.string :position
      t.string :status

      t.timestamps
    end
  end
end
