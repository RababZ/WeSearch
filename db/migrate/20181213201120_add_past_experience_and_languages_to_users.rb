class AddPastExperienceAndLanguagesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :past_experience, :text
    add_column :users, :languages, :text
  end
end
