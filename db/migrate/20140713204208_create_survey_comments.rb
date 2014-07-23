class CreateSurveyComments < ActiveRecord::Migration
  def change
    create_table :survey_comments do |t|
      t.string :comment, :limit => 2000
      t.integer :survey_id

      t.timestamps
    end
  end
end
