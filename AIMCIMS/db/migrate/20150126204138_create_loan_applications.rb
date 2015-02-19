class CreateLoanApplications < ActiveRecord::Migration
  def change
    create_table :loan_applications do |t|
      t.integer :loanId
      t.integer :loanTypeId
      t.integer :memberId
      t.string :applicationStatus
      t.date :dateFiled
      t.date :dateApproved
      t.date :dateReleased
      t.string :nameOfSpouse
      t.string :occupationOfSpouse
      t.text :otherResources
      t.decimal :totalFamilyIncome
      t.string :realProperties
      t.text :remarks

      t.timestamps
    end
  end
end
