class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
    	t.integer :github_id, null: false
    	t.integer :number, null: false
    	t.string :title, null: false
    	t.string :body
    	t.integer :user_id, null: false
    	t.string :user_login, null: false
    	t.integer :repository_id, null: false
    	t.string :repository_full_name, null: false
    	t.string :state, null: false
    	t.boolean :locked, null: false, default: false
    	t.datetime :closed_at

      t.timestamps
    end
  end
end
