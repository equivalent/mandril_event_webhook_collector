class AddIndexToEvents < ActiveRecord::Migration
  def change
    add_index :events, :action
    add_index :events, :address
    add_index :events, :email_type
  end
end
