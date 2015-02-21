class AddingComaker < ActiveRecord::Migration
  
  add_column :loan_applications, :coMaker1_id, :integer
  add_column :loan_applications, :coMaker2_id, :integer
  
end
