class CreateLoginAccounts < ActiveRecord::Migration
  def change
    create_table :login_accounts do |t|
      t.integer :loginId
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
