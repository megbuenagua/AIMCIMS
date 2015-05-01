class AddPasswordnull < ActiveRecord::Migration
  def change
     change_column :members, :password, :string, :null => false
  end
end
