class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.string :action, null: false
    	t.json :issue_changes
    	t.string :title_changed_from
    	t.string :body_changed_from
    	t.json :assignee
      t.json :label
      t.json :repository, null: false
    	t.json :sender, null: false

    	t.references :issue, foreign_key: true
      
      t.timestamps
    end

  end
end
