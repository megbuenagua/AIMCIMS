class AddOccupationOfSpouseToMembers < ActiveRecord::Migration
  def change
    add_column :members, :occupationOfSpouse, :string
  end
end
