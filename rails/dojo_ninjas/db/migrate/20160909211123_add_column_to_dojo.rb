class AddColumnToDojo < ActiveRecord::Migration
  def change
    add_column :dojos, :state, :string
  end
end
