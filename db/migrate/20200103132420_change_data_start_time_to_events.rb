class ChangeDataStartTimeToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :start_time, :text
  end
end
