class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_number
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :gender
      t.date :birthdate
      t.string :permanent_address
      t.string :home_number
      t.string :office_number
      t.string :mobile_number
      t.string :personal_email
      t.string :civil_status
      t.string :spouse
      t.string :occupation_of_spouse
      t.string :spouse_contact
      t.string :bank_account
      t.boolean :enrolled_with_postbank
      t.string :employer
      t.string :employer_number
      t.string :work_position
      t.string :office_address
      t.string :office_email
      t.string :membership_type
      t.date :date_approved
      t.text :notes

      t.timestamps
    end
  end
end
