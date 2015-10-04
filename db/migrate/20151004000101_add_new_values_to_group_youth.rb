class AddNewValuesToGroupYouth < ActiveRecord::Migration
  def change
    add_column :group_youths, :managers_id, :string
    add_column :group_youths, :parish_id, :string
  end
end
