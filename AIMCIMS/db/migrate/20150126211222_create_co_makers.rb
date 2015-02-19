class CreateCoMakers < ActiveRecord::Migration
  def change
    create_table :co_makers do |t|
      t.integer :coMakerId
      t.string :coMakerfname
      t.string :coMakermname
      t.string :coMakerlname
      t.date :birthdate
      t.string :address
      t.string :spouse
      t.integer :contactNumber
      t.string :employer
      t.string :employerAddress
      t.integer :employerContactNumber
      t.string :relationship

      t.timestamps
    end
  end
end
