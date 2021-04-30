json.extract! @olympic, :id, :title, :description, :edition, :start_registration, :end_registration, :image
json.responsable @olympic.responsable.each do |responsable|
  json.user_id responsable.user_id
  json.user_name responsable.user.name
  json.user_cpf responsable.user.cpf
end
json.report do
  json.subscription @olympic.subscription.each do |subscription|
    json.user_name subscription.user.name
    json.brazil_state subscription.brazil_state.name
    json.user_county subscription.county
    json.school subscription.school
  end
end


