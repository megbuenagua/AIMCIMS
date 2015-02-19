class CreateLoanPayments < ActiveRecord::Migration
  def change
    create_table :loan_payments do |t|
      t.integer :loanId
      t.integer :memberId
      t.date :paymentDate
      t.decimal :amount
      t.string :orNumber
      t.integer :staffId
      t.text :remarks

      t.timestamps
    end
  end
end
