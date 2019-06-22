module Api
	module V1	
		class IssuesController < ApplicationController
			rescue_from ActiveRecord::RecordNotFound, with: :handle_issue_not_found
			
			before_action :set_issue, only: [:events]
			# GET /issues/sync
			def sync
				render json: {message: :ok}, status: :ok
			end

			# GET /issues/:id/events
			def events
				#render json: @issue.events, status: :ok
				render json: {message: :ok}, status: :ok
			end

			private

			def set_issue
				@issue = Issue.find(params[:id])
			end

			def handle_issue_not_found
				render json: {error: I18n.t('errors.issue_not_found')}, status: :not_found
			end
			
		end
	end
end
