class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.date :deadline
      t.integer :work_hours
      t.float :price
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
