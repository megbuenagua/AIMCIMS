class CreateLoanPayments < ActiveRecord::Migration
  def change
    create_table :loan_payments do |t|
      t.integer :loan_id
      t.integer :member_id
      t.date :payment_date
      t.decimal :amount
      t.string :ornumber
      t.integer :staff_id
      t.text :remarks

      t.timestamps
    end
  end
end
