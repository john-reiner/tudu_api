class Task < ApplicationRecord
  has_many :sub_tasks
  belongs_to :list
end
