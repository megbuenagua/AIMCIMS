class CreateCapitalBuildUps < ActiveRecord::Migration
  def change
    create_table :capital_build_ups do |t|
      t.integer :memberId
      t.string :membershipType
      t.date :memberSince
      t.integer :subscribedShares
      t.integer :totalAmountShares
      t.decimal :initialPayment
      t.decimal :totalPaidAmount
      t.decimal :paidSharesPercentage
      t.string :termsOfPayment
      t.string :status
      t.text :remarks

      t.timestamps
    end
  end
end
