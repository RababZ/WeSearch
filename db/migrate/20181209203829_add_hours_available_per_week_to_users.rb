class AddHoursAvailablePerWeekToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hours_available_per_weeek, :integer
  end
end
