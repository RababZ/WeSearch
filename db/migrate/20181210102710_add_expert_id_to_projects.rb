class AddExpertIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :expert_id, :integer
  end
end
