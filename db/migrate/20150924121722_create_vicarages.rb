class CreateVicarages < ActiveRecord::Migration
  def change
    create_table :vicarages do |t|
      t.string :Name
      t.string :managers_id

      t.timestamps
    end
  end
end
