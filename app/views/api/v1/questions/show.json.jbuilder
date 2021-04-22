json.extract! @question, :id, :title
json.alternatives @question.alternatives.each do |alternative|
  json.alternative alternative.description
  json.is_true alternative.is_true
end
