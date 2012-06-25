class CreatePanelResponses < ActiveRecord::Migration
  def change
    create_table :panel_responses do |t|
      t.integer :panelist_interest
      t.boolean :would_moderate
      t.boolean :would_attend

      t.timestamps
    end
  end
end
