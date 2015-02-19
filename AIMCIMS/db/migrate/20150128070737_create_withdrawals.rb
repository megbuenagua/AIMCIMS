class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.integer :memberId
      t.datetime :date
      t.decimal :amount
      t.decimal :amount
      t.string :orNumber
      t.integer :staffId

      t.timestamps
    end
  end
end
