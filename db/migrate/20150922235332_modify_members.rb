class ModifyMembers < ActiveRecord::Migration
  def change
    add_column :members, :hashed_password, :string
  end
end
