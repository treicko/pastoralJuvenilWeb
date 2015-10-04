class RemoveInitialValuesFromGroupYouth < ActiveRecord::Migration
  def change
    remove_column :group_youths, :managers_id, :integer
    remove_column :group_youths, :parish_id, :integer
  end
end
