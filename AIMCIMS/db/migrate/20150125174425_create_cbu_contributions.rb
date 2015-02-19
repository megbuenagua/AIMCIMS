class CreateCbuContributions < ActiveRecord::Migration
  def change
    create_table :cbu_contributions do |t|
      t.integer :memberID
      t.datetime :date
      t.decimal :amount
      t.string :OrNumber
      t.integer :staffId
      t.text :remarks

      t.timestamps
    end
  end
end
