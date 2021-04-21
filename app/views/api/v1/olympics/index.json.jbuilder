json.array! @olympics do |olympic|
  json.extract! olympic, :id, :title
end