FactoryBot.define do
  factory :event do
		action {'opened'}
		issue_changes {''}
		assignee {nil}
		label {''}	
		issue
		repository {{id: 1, name: 'purchase_orders_challenge'}}
		sender {{id: 1, login: 'aranhaqg'}}

		trait :opened do
  	  action {'opened'}
		end
		trait :edited do
    	action {'edited'}
			issue_changes { {"title": {"from": "Update status to Machine State"}}}
    end
		trait :closed do
  	  action {'closed'}
		end

		trait :labeled do
  	  action {'labeled'}
  	  label { 
  	  				{
								"id": 919370516,
								"node_id": "MDU6TGFiZWw5MTkzNzA1MTY=",
								"url": "https://api.github.com/repos/aranhaqg/purchase_orders_challenge/labels/enhancement",
								"name": "enhancement",
								"color": "a2eeef",
								"default": true
							}
						}
		end

  end
		

end
