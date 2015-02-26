class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.integer :member_id
      t.datetime :date_time
      t.decimal :amount
      t.string  :ornumber
      t.integer :staff_id
      t.text    :remarks

      t.timestamps
    end
  end
end
