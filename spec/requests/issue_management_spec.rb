require "rails_helper"

RSpec.describe "Issue requests", :type => :request do
  let(:issue) { create(:issue, :with_mixed_events)}
  let(:issue_id) { issue.id }

  context 'when the issue exists' do
    before { get "/api/v1/issues/#{issue_id}/events" }

    it 'should exposes all its events' do
      expect(issue.events.as_json).not_to be_empty
    end

    it 'should returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  context 'when the issue is not found' do
    let(:issue_id) {0}
    before { get "/api/v1/issues/#{issue_id}/events" }

    it 'should returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'should returns a not found message' do
      expect(response.body).to match(I18n.t('errors.issue_not_found'))
    end
  end
end
