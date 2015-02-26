class CreateCbuContributions < ActiveRecord::Migration
  def change
    create_table :cbu_contributions do |t|
      t.integer :member_id
      t.datetime :date
      t.decimal :amount
      t.string :ornumber
      t.integer :staff_id
      t.text :remarks

      t.timestamps
    end
  end
end
