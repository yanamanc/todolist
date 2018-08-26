class Project < ApplicationRecord
	has_many :your_tasks

	validates :name, presence: true
end
