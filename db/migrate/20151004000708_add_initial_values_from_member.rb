class AddInitialValuesFromMember < ActiveRecord::Migration
  def change
    add_column :members, :group_id, :string
  end
end
