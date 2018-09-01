class Project < ApplicationRecord
	belongs_to :user
	has_many :your_tasks

	validates :name, presence: true
end
