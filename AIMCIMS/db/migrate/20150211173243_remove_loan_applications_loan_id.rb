class RemoveLoanApplicationsLoanId < ActiveRecord::Migration
  def change
    remove_column :loan_applications, :loanId, :integer
  end
end
