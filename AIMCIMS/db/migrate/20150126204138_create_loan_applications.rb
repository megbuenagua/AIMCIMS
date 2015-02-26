class CreateLoanApplications < ActiveRecord::Migration
  def change
    create_table :loan_applications do |t|
     
      t.integer :loan_type_id
      t.integer :member_id
      t.string :application_status
      t.date :date_filed
      t.date :date_approved
      t.date :date_released
     
      t.text :other_resources
      t.decimal :total_family_income
      t.string :real_properties
      t.text :remarks
      t.string :application_type
      t.decimal :loan_amount
      t.string :term_of_payment
      t.decimal :payment_per_term
      t.decimal :penalty_amount
      t.string :comaker1
      t.string :comaker2
      t.string :relationship1
      t.string :relationship2

      t.timestamps
    end
  end
end
