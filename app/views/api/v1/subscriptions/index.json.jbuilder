json.subscriptions @subscriptions.each do |subscription|
  json.subscription_id subscription.id
  json.olympic_id subscription.olympic_id
  json.user_name subscription.user.name
  json.user_cpf subscription.user.cpf
end