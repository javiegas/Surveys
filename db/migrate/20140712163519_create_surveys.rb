class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :who_survey_code

      t.datetime :create_dt
      t.string :create_by
      t.datetime :modify_dt
      t.string :modify_by
    end
  end
end
