require "rails_helper"

RSpec.describe "Events requests", :type => :request do
  let(:webhook_params) { 
    {
      "action": "opened",
      "issue": {
        "url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1",
        "repository_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge",
        "labels_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/labels{/name}",
        "comments_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/comments",
        "events_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/events",
        "html_url": "https://github.com/aranhaqg/purchase_orders_challenge/issues/1",
        "id": 457599318,
        "node_id": "MDU6SXNzdWU0NTc1OTkzMTg=",
        "number": 1,
        "title": "Update status to Machine State",
        "user": {
          "login": "aranhaqg",
          "id": 1275896,
          "node_id": "MDQ6VXNlcjEyNzU4OTY=",
          "avatar_url": "https://avatars0.githubusercontent.com/u/1275896?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/aranhaqg",
          "html_url": "https://github.com/aranhaqg",
          "followers_url": "https://api.github.com/users/aranhaqg/followers",
          "following_url": "https://api.github.com/users/aranhaqg/following{/other_user}",
          "gists_url": "https://api.github.com/users/aranhaqg/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/aranhaqg/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/aranhaqg/subscriptions",
          "organizations_url": "https://api.github.com/users/aranhaqg/orgs",
          "repos_url": "https://api.github.com/users/aranhaqg/repos",
          "events_url": "https://api.github.com/users/aranhaqg/events{/privacy}",
          "received_events_url": "https://api.github.com/users/aranhaqg/received_events",
          "type": "User",
          "site_admin": false
        },
        "labels": [

        ],
        "state": "open",
        "locked": false,
        "assignee": 'null',
        "assignees": [

        ],
        "milestone": 'null',
        "comments": 0,
        "created_at": "2019-06-18T17:11:22Z",
        "updated_at": "2019-06-18T17:11:22Z",
        "closed_at": 'null',
        "author_association": "OWNER",
        "body": ""
      },
      "repository": {
        "id": 131720917,
        "node_id": "MDEwOlJlcG9zaXRvcnkxMzE3MjA5MTc=",
        "name": "purchase_orders_challenge",
        "full_name": "aranhaqg/purchase_orders_challenge",
        "private": false,
        "owner": {
          "login": "aranhaqg",
          "id": 1275896,
          "node_id": "MDQ6VXNlcjEyNzU4OTY=",
          "avatar_url": "https://avatars0.githubusercontent.com/u/1275896?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/aranhaqg",
          "html_url": "https://github.com/aranhaqg",
          "followers_url": "https://api.github.com/users/aranhaqg/followers",
          "following_url": "https://api.github.com/users/aranhaqg/following{/other_user}",
          "gists_url": "https://api.github.com/users/aranhaqg/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/aranhaqg/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/aranhaqg/subscriptions",
          "organizations_url": "https://api.github.com/users/aranhaqg/orgs",
          "repos_url": "https://api.github.com/users/aranhaqg/repos",
          "events_url": "https://api.github.com/users/aranhaqg/events{/privacy}",
          "received_events_url": "https://api.github.com/users/aranhaqg/received_events",
          "type": "User",
          "site_admin": false
        },
        "html_url": "https://github.com/aranhaqg/purchase_orders_challenge",
        "description": "Rails REST API to receive Purchase Orders, group them on Batches and follow the Orders in the production pipeline until the dispatch.",
        "fork": false,
        "url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge",
        "forks_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/forks",
        "keys_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/keys{/key_id}",
        "collaborators_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/collaborators{/collaborator}",
        "teams_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/teams",
        "hooks_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/hooks",
        "issue_events_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/events{/number}",
        "events_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/events",
        "assignees_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/assignees{/user}",
        "branches_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/branches{/branch}",
        "tags_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/tags",
        "blobs_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/git/blobs{/sha}",
        "git_tags_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/git/tags{/sha}",
        "git_refs_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/git/refs{/sha}",
        "trees_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/git/trees{/sha}",
        "statuses_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/statuses/{sha}",
        "languages_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/languages",
        "stargazers_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/stargazers",
        "contributors_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/contributors",
        "subscribers_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/subscribers",
        "subscription_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/subscription",
        "commits_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/commits{/sha}",
        "git_commits_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/git/commits{/sha}",
        "comments_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/comments{/number}",
        "issue_comment_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/comments{/number}",
        "contents_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/contents/{+path}",
        "compare_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/compare/{base}...{head}",
        "merges_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/merges",
        "archive_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/{archive_format}{/ref}",
        "downloads_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/downloads",
        "issues_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues{/number}",
        "pulls_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/pulls{/number}",
        "milestones_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/milestones{/number}",
        "notifications_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/notifications{?since,all,participating}",
        "labels_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/labels{/name}",
        "releases_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/releases{/id}",
        "deployments_url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/deployments",
        "created_at": "2018-05-01T14:12:54Z",
        "updated_at": "2019-04-10T17:40:02Z",
        "pushed_at": "2019-04-10T17:39:59Z",
        "git_url": "git://github.com/aranhaqg/purchase_orders_challenge.git",
        "ssh_url": "git@github.com:aranhaqg/purchase_orders_challenge.git",
        "clone_url": "https://github.com/aranhaqg/purchase_orders_challenge.git",
        "svn_url": "https://github.com/aranhaqg/purchase_orders_challenge",
        "homepage": "https://limitless-dusk-21363.herokuapp.com/",
        "size": 62,
        "stargazers_count": 0,
        "watchers_count": 0,
        "language": "Ruby",
        "has_issues": true,
        "has_projects": true,
        "has_downloads": true,
        "has_wiki": true,
        "has_pages": false,
        "forks_count": 0,
        "mirror_url": 'null',
        "archived": false,
        "disabled": false,
        "open_issues_count": 1,
        "license": 'null',
        "forks": 0,
        "open_issues": 1,
        "watchers": 0,
        "default_branch": "master"
      },
      "sender": {
        "login": "aranhaqg",
        "id": 1275896,
        "node_id": "MDQ6VXNlcjEyNzU4OTY=",
        "avatar_url": "https://avatars0.githubusercontent.com/u/1275896?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/aranhaqg",
        "html_url": "https://github.com/aranhaqg",
        "followers_url": "https://api.github.com/users/aranhaqg/followers",
        "following_url": "https://api.github.com/users/aranhaqg/following{/other_user}",
        "gists_url": "https://api.github.com/users/aranhaqg/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/aranhaqg/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/aranhaqg/subscriptions",
        "organizations_url": "https://api.github.com/users/aranhaqg/orgs",
        "repos_url": "https://api.github.com/users/aranhaqg/repos",
        "events_url": "https://api.github.com/users/aranhaqg/events{/privacy}",
        "received_events_url": "https://api.github.com/users/aranhaqg/received_events",
        "type": "User",
        "site_admin": false
      }
    } 
  } 

  context 'when event occurs and the event is persisted' do
    before { post "/api/v1/events/sync", params: webhook_params }

    it 'should find issue and event related' do
      issue = Issue.find webhook_params[:issue][:id] 
      expect(issue).not_to be_nil
      expect(issue.events.count).to eq(1)
    end

    it 'should returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  context 'when event occurs and the event is not persisted' do
    before { post "/api/v1/events/sync", params: webhook_params.except(:repository) }
  
    it 'should returns status code 422' do
      expect(response).to have_http_status(422)
    end

    it 'should returns a event not saved message' do
      expect(response.body).to match(I18n.t('errors.couldnt_save_event'))
    end
  end
end
