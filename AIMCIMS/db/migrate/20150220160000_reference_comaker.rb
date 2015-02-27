class ReferenceComaker < ActiveRecord::Migration
  def change
   change_table :loan_applications do |t|
    t.references :co_maker, index: true
    end

  #add_foreign_key( :loan_applications, :co_makers)
    add_foreign_key :loan_applications, :co_makers, name:  :comaker1
    add_foreign_key :loan_applications, :co_makers, name:  :comaker2
  end
end