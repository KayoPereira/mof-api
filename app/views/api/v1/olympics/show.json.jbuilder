json.extract! @olympic, :id, :title, :description, :edition, :start_registration, :end_registration, :image
json.responsable @olympic.responsable.each do |responsable|
  json.user_id responsable.user_id
  json.user_name responsable.user.name
  json.user_cpf responsable.user.cpf
end


