module Api
	module V1	
		class IssuesController < ApplicationController
			#before_action :set_issue, only: [:events]
			
			# GET /issues/sync
			def sync
				render json: [message: :ok], status: :ok
			end

			# GET /issues/:id/events
			def events
				#render json: @issue.events, status: :ok
				render json: [message: :ok], status: :ok
			end

			private

			def set_issue
				@issue = Issue.find(params[:id])
			end
		end
	end
end
