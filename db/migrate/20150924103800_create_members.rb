class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :fullName
      t.date :birthDate
      t.string :phone
      t.integer :group_id

      t.timestamps
    end
  end
end
