class AddPasswordAdmin < ActiveRecord::Migration
  def change
    add_column :admin_staffs, :password, :string
  end
end
