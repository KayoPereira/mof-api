json.test_questions @test_questions.each do |test_question|
  json.test_question_id test_question.id
  json.test_id test_question.test_id
  json.question_id test_question.question_id
end