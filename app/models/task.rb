class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  belongs_to :client_review, :class_name => 'Review', :foreign_key => 'client_review_id', optional: true
  belongs_to :expert_review, :class_name => 'Review', :foreign_key => 'expert_review_id', optional: true
end
