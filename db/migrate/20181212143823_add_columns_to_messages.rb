class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :body, :text
    add_reference :messages, :conversation, foreign_key: true
    add_reference :messages, :user, foreign_key: true

    add_column :messages, :created_at, :datetime, null: false
    add_column :messages, :updated_at, :datetime, null: false
  end
end
