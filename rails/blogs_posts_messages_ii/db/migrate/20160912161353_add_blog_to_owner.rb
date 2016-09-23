class AddBlogToOwner < ActiveRecord::Migration
  def change
    add_reference :owners, :blog, index: true
  end
end
