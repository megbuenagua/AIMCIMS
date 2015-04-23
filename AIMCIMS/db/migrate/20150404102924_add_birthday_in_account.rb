class AddBirthdayInAccount < ActiveRecord::Migration
  def change
        add_column :login_accounts, :account_birthday, :string
  end
end
