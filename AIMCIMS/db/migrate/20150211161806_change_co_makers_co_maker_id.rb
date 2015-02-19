class ChangeCoMakersCoMakerId < ActiveRecord::Migration
  def change
  reversible do |dir|
      change_table :co_makers do |t|
        dir.up   { t.change :coMakerId, :string }
        dir.down { t.change :coMakerId, :integer }
      end
    end
  end
end
