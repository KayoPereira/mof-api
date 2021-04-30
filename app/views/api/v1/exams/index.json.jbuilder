json.array! @exams do |exam|
  json.extract! exam, :id, :olympic_id, :test_id
end