class CreateBabycards < ActiveRecord::Migration
  def change
    create_table :babycards do |t|
      t.string :name
      t.integer :gender
      t.string :birthday
      t.string :blood_type
      t.string :father_phone
      t.string :mather_phone
      t.string :record
      t.text :note
      t.string :color

      t.timestamps
    end
  end
end
