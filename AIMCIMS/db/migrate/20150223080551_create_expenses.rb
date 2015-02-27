class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :particulars
      t.date :expense_date
      t.decimal :amount
      t.string :approved_by
      t.string :received_by
      t.integer :staff_id

      t.timestamps
    end
  end
end
