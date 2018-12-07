class AddYearsExperienceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :years_experience, :integer
  end
end
