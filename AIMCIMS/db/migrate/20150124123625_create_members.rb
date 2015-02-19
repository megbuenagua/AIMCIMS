class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :memberId
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :gender
      t.date :birthdate
      t.string :permanentAddress
      t.integer :homeNumber
      t.integer :officeNumber
      t.integer :mobileNumber
      t.string :personalEmail
      t.string :civilSatus
      t.string :spouse
      t.string :bankAccount
      t.boolean :enrolledWithPostbank
      t.string :employer
      t.integer :employerNumber
      t.string :position
      t.string :officeAddress
      t.string :officeEmail
      t.string :membershipType
      t.date :dateApproved
      t.text :notes

      t.timestamps
    end
  end
end
