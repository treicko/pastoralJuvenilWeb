class CreateParishes < ActiveRecord::Migration
  def change
    create_table :parishes do |t|
      t.string :Name
      t.string :address
      t.string :managers_id
      t.integer :vicarage_id

      t.timestamps
    end
  end
end
