json.responsable @responsable.each do |responsable|
  json.olympic_id responsable.olympic_id
  json.olympic_title responsable.olympic.title
  json.user_id responsable.user_id
  json.user_name responsable.user.name
  json.user_cpf responsable.user.cpf
end