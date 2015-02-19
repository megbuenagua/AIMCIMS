class ChangeLoanPaymentsMemberId < ActiveRecord::Migration
  def change
  reversible do |dir|
      change_table :loan_payments do |t|
        dir.up   { t.change :memberId, :string }
        dir.down { t.change :memberId, :integer }
      end
    end
  end
end
