class RemoveReferencesFromFriendship < ActiveRecord::Migration
  def change
    remove_column :friendships, :references, :string
  end
end
