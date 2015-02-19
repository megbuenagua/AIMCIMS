class ChangeSavingsMembersId < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :savings do |t|
        dir.up   { t.change :memberId, :string }
        dir.down { t.change :memberId, :integer }
      end
    end
  end
end
