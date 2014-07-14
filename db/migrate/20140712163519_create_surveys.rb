class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :who_survey_code

      t.timestamps
    end
  end
end
