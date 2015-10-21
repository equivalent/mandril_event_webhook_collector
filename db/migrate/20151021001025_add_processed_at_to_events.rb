class AddProcessedAtToEvents < ActiveRecord::Migration
  def change
    add_column :events, :processed_at, :datetime
  end
end
