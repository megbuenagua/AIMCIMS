class ChangeLoginAccountsLoginId < ActiveRecord::Migration
  def change
  reversible do |dir|
      change_table :login_accounts do |t|
        dir.up   { t.change :loginId, :string }
        dir.down { t.change :loginId, :integer }
      end
    end
  end
end
