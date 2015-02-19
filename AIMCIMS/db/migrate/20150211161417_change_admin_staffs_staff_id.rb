class ChangeAdminStaffsStaffId < ActiveRecord::Migration
  def change
  reversible do |dir|
      change_table :admin_staffs do |t|
        dir.up   { t.change :staffId, :string }
        dir.down { t.change :staffId, :integer }
      end
    end
  end
end
