class ChangeStaffid < ActiveRecord::Migration
  def change
  remove_column :admin_staffs, :staff_number, :integer
   add_column :admin_staffs, :staff_number, :string
  end
end
