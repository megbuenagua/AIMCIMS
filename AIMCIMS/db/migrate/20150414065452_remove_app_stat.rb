class RemoveAppStat < ActiveRecord::Migration
  def change
   remove_column :loan_applications, :application_status, :string
   add_column :members, :spouse_employer, :string
   add_column :members, :spouse_employer_number, :string
   add_column :members, :spouse_work_position, :string
   add_column :members, :spouse_office_address, :string
  end
end
