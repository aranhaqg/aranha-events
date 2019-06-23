# Aranha Events API [![Build Status](https://travis-ci.com/aranhaqg/aranha-events.svg?branch=master)](https://travis-ci.com/aranhaqg/aranha-events)

Aranha Events is a Rails REST API to listen to Github Issue Events via webhooks, persist and expose then. An issue event is triggered when an issue is opened, edited, deleted, transferred, pinned, unpinned, closed, reopened, assigned, unassigned, labeled, unlabeled, locked, unlocked, milestoned, or demilestoned.

Available at https://aranha-events.herokuapp.com/api/v1/issues/1/events.

This app uses:

* Ruby version 2.5.1
* Rails 5.2.3
* PostgreSQL 9.6.8
* Ngrok 2.3.29

To run tests it was used RSpec, Factory Bot and Database Cleaner gems. For more details check [Gemfile](Gemfile).

## Entities
### Issue

The [Issue](/app/models/issue.rb) entity it's composed of the following properties:

* url: String
* repository_url: String
* labels_url: String
* comments_url: String
* events_url: String
* html_url: String
* node_id: Integer
* number:: Integer
* title: String
* user: JSON
* labels: JSON
* state: String
* locked: Boolean
* assignee: JSON
* assignees: JSON
* milestone: JSON
* comments: JSON
* closed_at: DateTime
* author_association: String
* body: String
* events: list of relates Events

For user, labels, state, etc. the json object was used to make the declaration flexible and the app simpler.

This entity validates presence of url, repository_url, labels_url, comments_url, events_url, html_url, labels_url, node_id, number, title, user and state. 

All these properties were retrieved inspecting the webhook request payload and from the [Github Webhook documentation](https://developer.github.com/v3/activity/events/types/#issuesevent). 

### Event

The [Event](/app/models/event.rb) entity it's composed of the following properties:

* action: String
* issue_changes: JSON
* title_changed_from: String
* body_changed_from: String
* assignee: JSON
* label: JSON
* repository: JSON
* sender: JSON
* issue_id: Integer (foreign key to reference the Issue entity)
* issue: Issue entity

This entity validates presence of action, repository and sender.   

## Endpoints
All defined endpoints returns a JSON Object (a message or requested entities).

### GET /issues/:id/events

This endpoint is used to returns all the events from a specific issue and its handled by action events at [Issues Controller](/app/controllers/issues_controller.rb).  

If any issue is found with the given id, a response with the serialized events and status code 200 will be returned. If no issue was found, a no issue found message error and 404 status code are expected.

### POST /events/sync 

This endpoint is used by the Github Webhook when and issue event occur. It create or update an issue and create the new event related to it. This endpoint its handled by action sync at [Events Controller](/app/controllers/events_controller.rb).
This action expect to receive the valid attributes and returns http status code 200. If not, it should return a response with a error message informing that the event wasn't saved and the status code 422. 

## Future Improvements

* Use ActiveModel Serializer to handle better serialization/deserialization.
* Implement authentication and authorization.
* Improve security with Rack Attack to protect from bad clients. Can be used to prevent brute-force passwords attacks, scrapers and throttling requests from IP addresses for example.
* Scan code to look for security vulnerabilities with Brakeman. 
* Add State Machines to Issue State (AASM gem can be used).
* Add User, Repository, Label and Milestone models.
* Add a Web UI to the app.

## Running Locally

Make sure you have a [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails) with [Postgres](https://www.postgresql.org/) environment set it up and [Ngrok](https://ngrok.com/) installed. Then, clone this repo and [bundle](https://bundler.io/) it. 
```sh
git clone https://github.com/aranhaqg/aranha-events.git
cd aranha-events
bundle
```
Create the local database and run the migrations.
```sh
rake db:create
rake db:migrate
```
Start the rails server.
```sh
rails s
```
Start the ngrok service to expose the local server.
```sh
./ngrok http 3000
```
The fowarding url will be the Webhook Payload url.
Follow this link to create and configure the webhook: https://developer.github.com/webhooks/creating/. 

## Running The Tests

In the app folder, create the test database and run the migrations.
```sh
RAILS_ENV=test rake db:create
RAILS_ENV=test rake db:migrate
```
Run the RSpec.
```sh
rspec
```
