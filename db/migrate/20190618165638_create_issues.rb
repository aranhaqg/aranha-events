class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
    	t.string :url, null: false
      t.string :repository_url, null: false
      t.string :labels_url, null: false
      t.string :comments_url, null: false
      t.string :events_url, null: false
      t.string :html_url, null: false
      t.integer :node_id, null: false
      t.integer :number, null: false
      t.string :title, null: false
      t.json :user, null: false
      t.json :labels
      t.string :state, null: false
      t.boolean :locked, default: false
      t.json :assignee
      t.json :assignees
      t.json :milestone
      t.json :comments
      t.datetime :closed_at
      t.string :author_association
      t.string :body
    	

      t.timestamps
    end
  end
end
