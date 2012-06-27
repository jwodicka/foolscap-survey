class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.boolean :fri_afternoon
      t.boolean :fri_evening
      t.boolean :sat_am
      t.boolean :sat_afternoon
      t.boolean :sat_evening
      t.boolean :sun_am
      t.boolean :sun_afternoon

      t.references :survey_response

      t.timestamps
    end
  end
end
