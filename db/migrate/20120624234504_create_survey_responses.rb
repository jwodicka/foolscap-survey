class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.string :token
      t.string :email
      t.string :name
      t.boolean :email_preference
      t.text :comment

      t.timestamps
    end
  end
end
