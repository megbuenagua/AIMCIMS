class ContraintsMembersAndLoan < ActiveRecord::Migration
  def change
    change_table :loan_applications do |t|
    t.references :member, index: true
    t.references :loan_type, index: true
    end
    
    add_foreign_key( :loan_applications, :members)
    add_foreign_key( :loan_applications, :loan_types)
  end
end
