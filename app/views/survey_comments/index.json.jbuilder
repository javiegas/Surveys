json.array!(@survey_comments) do |survey_comment|
  json.extract! survey_comment, :id, :comment, :survey_id
  json.url survey_comment_url(survey_comment, format: :json)
end
