json.extract! @exam, :id, :test_id, :olympic_id
json.olympic_title @exam.olympic.title
json.test_description @exam.test.description