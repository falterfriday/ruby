class AddUserToOwner < ActiveRecord::Migration
  def change
    add_reference :owners, :user, index: true
  end
end
