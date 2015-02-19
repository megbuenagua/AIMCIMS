class RemoveLoanTypesLoanTypeId < ActiveRecord::Migration
  def change
    remove_column :loan_types, :loanTypeId, :integer
  end
end
