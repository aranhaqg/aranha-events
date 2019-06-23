class Issue < ApplicationRecord
	has_many :events
	validates :url,:repository_url,:labels_url,:comments_url, presence: true
	validates :events_url,:html_url,:labels_url,:node_id, presence: true
	validates :number,:title,:user,:state, presence: true
end
