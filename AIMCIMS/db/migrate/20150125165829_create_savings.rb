class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.integer :savingsId
      t.integer :memberId
      t.datetime :dateTime
      t.decimal :amount
      t.string :orNumber
      t.integer :staffed

      t.timestamps
    end
  end
end
