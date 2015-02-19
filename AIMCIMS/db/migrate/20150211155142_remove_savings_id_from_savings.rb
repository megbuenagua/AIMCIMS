class RemoveSavingsIdFromSavings < ActiveRecord::Migration
  def change
    remove_column :savings, :savingsId, :integer
  end
end
