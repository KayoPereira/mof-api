json.extract! @test_question, :id, :question_id, :test_id
json.question do
  json.question_title @test_question.question.title
  json.alternatives @test_question.question.alternative.each do |alternative|
    json.alternative alternative.description
    json.is_true alternative.is_true
  end
end