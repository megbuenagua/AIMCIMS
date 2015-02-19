class RemoveSpouseFromLoanApplication < ActiveRecord::Migration
  def change
  remove_column :loan_applications, :nameOfSpouse, :string
  remove_column :loan_applications, :occupationOfSpouse, :string
  end
end
