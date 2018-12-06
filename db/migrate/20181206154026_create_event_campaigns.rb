class CreateEventCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :event_campaigns do |t|
      t.string :title
      t.datetime :startdate
      t.float :budget
      t.text :brief

      t.timestamps
    end
  end
end
