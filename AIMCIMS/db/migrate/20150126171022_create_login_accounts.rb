class CreateLoginAccounts < ActiveRecord::Migration
  def change
    create_table :login_accounts do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
