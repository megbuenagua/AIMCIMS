class AddPeriod < ActiveRecord::Migration
  def change
      add_column :loan_applications, :period, :integer
  end
end
