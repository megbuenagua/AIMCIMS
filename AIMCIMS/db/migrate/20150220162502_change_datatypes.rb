class ChangeDatatypes < ActiveRecord::Migration
  def change
    add_column :loan_applications, :relationship1, :string
    add_column :loan_applications, :relationship2, :string
    add_column :members, :spouseContactNumber, :string
    remove_column :co_makers, :relationship, :string
    remove_column :savings, :staffed, :integer
    add_column :savings, :admin_staff_id, :integer
    end
    
    reversible do |dir|
      change_table :co_makers do |t|
        dir.up   { t.change :contactNumber, :string }
        dir.down { t.change :contactNumber, :integer }
      end
    end
      
    reversible do |dir|
      change_table :co_makers do |t|
        dir.up   { t.change :employerContactNumber, :string }
        dir.down { t.change :employerContactNumber, :integer }
      end
    end
    
    reversible do |dir|
      change_table :members do |t|
        dir.up   { t.change :homeNumber, :string }
        dir.down { t.change :homeNumber, :integer }
      end
    end
    
    reversible do |dir|
      change_table :members do |t|
        dir.up   { t.change :officeNumber, :string }
        dir.down { t.change :officeNumber, :integer }
      end
    end
    
    reversible do |dir|
      change_table :members do |t|
        dir.up   { t.change :mobileNumber, :string }
        dir.down { t.change :mobileNumber, :integer }
      end
    end
    
    reversible do |dir|
      change_table :members do |t|
        dir.up   { t.change :employerNumber, :string }
        dir.down { t.change :employerNumber, :integer }
      end
    end
    
end
