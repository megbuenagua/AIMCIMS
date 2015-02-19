class AddMembershipTypeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :membershipType, :string
  end
end
