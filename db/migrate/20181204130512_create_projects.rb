class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.date :deadline
      t.integer :client_id
      t.integer :manager_id
      t.integer :client_review_id
      t.integer :expert_review_id

      t.timestamps
    end
  end
end
