class ChangeCbuContributionsMemberId < ActiveRecord::Migration
  def change
  reversible do |dir|
      change_table :cbu_contributions do |t|
        dir.up   { t.change :memberID, :string }
        dir.down { t.change :memberID, :integer }
      end
    end
  end
end
