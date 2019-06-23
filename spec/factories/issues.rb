FactoryBot.define do
  factory :issue do
  	number {1}
  	title	{'Add Machine State to issue status'}
  	body {'Sugestion: use gem aasm'}
  	user {{ id: 1, name: 'aranhaqg'}}
  	state {'open'}
  	locked {false}
  	closed_at {nil}
  	url {'https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1'}
   	repository_url {"https://api.github.com/repos/aranhaqg/purchase_orders_challenge"}
    labels_url {"https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/labels{/name}"}
    comments_url {"https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/comments"}
    events_url {"https://api.github.com/repos/aranhaqg/purchase_orders_challenge/issues/1/events"}
    html_url {"https://github.com/aranhaqg/purchase_orders_challenge/issues/1"}
    node_id {1}
    
    trait :with_mixed_events do
    	state {'closed'}
      closed_at {DateTime.now}
    	after(:create) do |issue, evaluator|
       	create(:event, :opened, issue: issue)
      	create(:event, :closed, issue: issue)
      	create(:event, :edited, issue: issue)
      	create(	:event, :labeled, issue: issue)
      	issue.events.reload  
      end
    end
  end
end

