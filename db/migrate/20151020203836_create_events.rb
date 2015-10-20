class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :raw
      t.string :address
      t.string :event_type
      t.string :action
      t.datetime :occured_at

      t.timestamps null: false
    end
  end
end
