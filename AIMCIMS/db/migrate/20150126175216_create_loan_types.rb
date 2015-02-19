class CreateLoanTypes < ActiveRecord::Migration
  def change
    create_table :loan_types do |t|
      t.integer :loanTypeId
      t.string :loanName
      t.decimal :maxAmount
      t.decimal :minAmmount
      t.decimal :interestRate
      t.integer :period
      t.string :termOfPayment
      t.decimal :penalty

      t.timestamps
    end
  end
end
