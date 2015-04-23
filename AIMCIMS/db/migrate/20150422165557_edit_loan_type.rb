class EditLoanType < ActiveRecord::Migration
  def change
    add_column :loan_types, :date_created, :date
    add_column :loan_types, :created_by, :integer
  end
end
