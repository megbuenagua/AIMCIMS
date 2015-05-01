class Retrievchanges < ActiveRecord::Migration
  def change
    add_column :loan_applications, :member_id, :integer
    remove_column :loan_payments, :member_id, :integer
  end
end
