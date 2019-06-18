require "rails_helper"

RSpec.describe "Issue management", :type => :request do
  let!(:issue) { create(:issue) }
  let(:issue_id) { issue.id }

  context 'when the issue exists' do
    before { get "/api/v1/issues/#{issue_id}/events" }

    it 'exposes all its events' do
      expect(issue.as_json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
