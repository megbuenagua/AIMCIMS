class CreateCapitalBuildUps < ActiveRecord::Migration
  def change
    create_table :capital_build_ups do |t|
      t.integer :member_id
      t.string  :membership_type
      t.date    :member_since
      t.integer :subscribed_shares
      t.decimal :amount_per_shares
      t.decimal :total_amount_shares
      t.decimal :initial_payment
      t.decimal :total_paid_amount
      t.decimal :paid_shares_percentage
      t.string  :terms_of_payment
      t.string  :status
      t.text    :remarks

      t.timestamps
    end
  end
end
