FactoryBot.define do
  factory :issue do
  	github_id {1}
  	number {1}
  	title	{'Add Machine State to issue status'}
  	body {'Sugestion: use gem aasm'}
  	user_login {'aranhaqg'}
  	user_id {1}
  	repository_full_name {'aranhaqg/purchase_orders_challenge'} 
  	repository_id {1}
  	state {'open'}
  	locked {false}
  	closed_at {nil}

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

