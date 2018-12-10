class RemoveUserIdAndPriceAndClientReviewIdAndExpertReviewIdFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :user_id
    remove_column :tasks, :price
    remove_column :tasks, :client_review_id
    remove_column :tasks, :expert_review_id
  end
end
