class ChangeComakerNumber < ActiveRecord::Migration
  def change
   remove_column :co_makers, :comaker_number, :integer
   add_column :co_makers, :comaker_number, :string
  end
end
