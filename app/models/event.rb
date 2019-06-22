class Event < ApplicationRecord
	belongs_to :issue

	validates :action,:repository,:sender, presence: true
	
end
