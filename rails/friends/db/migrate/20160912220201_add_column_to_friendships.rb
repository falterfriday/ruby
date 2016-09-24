class AddColumnToFriendships < ActiveRecord::Migration
  def change
    add_reference :friendships, :friend, index: true
    add_reference :friendships, :user, index: true
  end
end
