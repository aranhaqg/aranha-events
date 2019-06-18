FactoryBot.define do
  factory :issue, class: Issue do
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
  end
end

