class ChangeValuesToNotNull < ActiveRecord::Migration
  def change
  
  #change_column_null :members, :member_number, true
  change_column_null :members, :firstname, false
  change_column_null :members, :middlename, false
  change_column_null :members, :lastname, false
  

  end
end
