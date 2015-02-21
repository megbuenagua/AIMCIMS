class AddAndRemove < ActiveRecord::Migration
  def change
  add_column :members, :spouseOccupation, :string
  remove_column :loan_types, :termOfPayment, :string
  end
end
