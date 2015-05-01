class AddCbuIdtoCont < ActiveRecord::Migration
  def change
      add_column :cbu_contributions, :cbu_id, :integer
      remove_column :cbu_contributions, :member_id, :integer
      remove_column :loan_applications, :member_id, :integer
  end
end
