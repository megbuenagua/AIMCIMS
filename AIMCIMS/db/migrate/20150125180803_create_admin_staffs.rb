class CreateAdminStaffs < ActiveRecord::Migration
  def change
    create_table :admin_staffs do |t|
      t.integer :staffId
      t.string :name
      t.date :dateHired
      t.string :position
      t.string :status

      t.timestamps
    end
  end
end
