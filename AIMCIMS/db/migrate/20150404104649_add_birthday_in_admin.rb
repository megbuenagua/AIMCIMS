class AddBirthdayInAdmin < ActiveRecord::Migration
  def change
  add_column :admin_staffs, :birthday, :string
  end
end
