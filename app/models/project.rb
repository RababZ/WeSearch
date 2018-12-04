class Project < ApplicationRecord
  belongs_to :client, :class_name => 'User', :foreign_key => 'client_id'
  belongs_to :manager, :class_name => 'User', :foreign_key => 'manager_id'
  has_many :tasks
end
