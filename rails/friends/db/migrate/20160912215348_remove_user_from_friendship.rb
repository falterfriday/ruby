class RemoveUserFromFriendship < ActiveRecord::Migration
  def change
    remove_column :friendships, :user, :string
  end
end
