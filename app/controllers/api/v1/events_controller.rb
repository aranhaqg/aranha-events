module Api
	module V1	
		class EventsController < ApplicationController
			rescue_from ActiveRecord::ActiveRecordError, with: :handle_saving_error

			# POST /events/sync
			def sync
				Event.transaction do 
					issue = Issue.where(id: issue_params[:id]).first_or_initialize
				  issue.update! issue_params
				  Event.new(event_params).save!
			 	end
				
				render json: {message: :ok}, status: :ok
			end

			private

			def handle_saving_error
				render json: {error: I18n.t('errors.couldnt_save_event')}, status: :unprocessable_entity
			end

			def issue_params
				params.require(:issue).permit!
			end

			def event_params
				params.except(:format,:controller,:issue,:event).merge!(issue_id: issue_params[:id]).permit!
			end

		end
	end
end
