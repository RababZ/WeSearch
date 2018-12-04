class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.date :deadline
      t.references :user, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
