class CreateLoanTypes < ActiveRecord::Migration
  def change
    create_table :loan_types do |t|
      
      t.string :loan_name
      t.decimal :maxamount
      t.decimal :minamount
      t.decimal :interest
      t.integer :period
      t.decimal :penalty

      t.timestamps
    end
  end
end
