class Project < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: 'client_id', optional: true
  belongs_to :manager, class_name: 'User', foreign_key: 'manager_id', optional: true
  belongs_to :expert, class_name: 'User', foreign_key: 'expert_id', optional: true
  belongs_to :client_review, class_name: 'Review', foreign_key: 'client_review_id', optional: true, dependent: :destroy
  belongs_to :expert_review, class_name: 'Review', foreign_key: 'expert_review_id', optional: true, dependent: :destroy
  has_many :tasks, dependent: :destroy

   scope :pending, -> () {
    self.where(approved: false).count.to_s
   }
end
