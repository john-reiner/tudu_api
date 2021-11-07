class List < ApplicationRecord
    has_many :user_lists
    has_many :tasks, dependent: :destroy
    has_many :users, through: :user_lists
end
