json.extract! @test, :id, :description, :start_test, :end_test
json.questions do
  json.test_question @test.test_question.each do |test_question|
    json.question do
      json.title test_question.question.title
    end
    json.alternatives test_question.question.alternative
  end
end