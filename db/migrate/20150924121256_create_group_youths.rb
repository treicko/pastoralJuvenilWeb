class CreateGroupYouths < ActiveRecord::Migration
  def change
    create_table :group_youths do |t|
      t.string :Name
      t.string :gatheringPlace
      t.string :schedules
      t.string :managers_id
      t.date :creationDate
      t.integer :parish_id

      t.timestamps
    end
  end
end
