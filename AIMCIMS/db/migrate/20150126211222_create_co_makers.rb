class CreateCoMakers < ActiveRecord::Migration
  def change
    create_table :co_makers do |t|
      t.integer :comaker_number
      t.string :comakerfname
      t.string :comakermname
      t.string :comakerlname
      t.date :birthdate
      t.string :address
      t.string :spouse
      t.string :contact_number
      t.string :employer
      t.string :employer_address
      t.string :employer_contact_number
      
      t.timestamps
    end
  end
end
