class AddUserIdToBabycard < ActiveRecord::Migration
  def change
    add_column :babycards, :user_id, :integer
  end
end
