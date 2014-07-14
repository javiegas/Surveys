class CreateSurveyComments < ActiveRecord::Migration
  def change
    create_table :survey_comments do |t|
      t.string :comment
      t.integer :survey_id

      t.timestamps
    end
  end
end
