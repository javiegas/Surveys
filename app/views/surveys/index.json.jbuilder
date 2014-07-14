json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :who_survey_code
  json.url survey_url(survey, format: :json)
end
