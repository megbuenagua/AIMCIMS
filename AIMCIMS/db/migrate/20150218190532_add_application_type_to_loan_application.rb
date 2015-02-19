class AddApplicationTypeToLoanApplication < ActiveRecord::Migration
  def change
  add_column :loan_applications, :applicationType, :string
  add_column :loan_applications, :loanAmount, :decimal
  add_column :loan_applications, :termOfPayment, :string
  add_column :loan_applications, :paymentPerTerm, :decimal
  add_column :loan_applications, :penaltyAmount, :decimal
  
  end
end
