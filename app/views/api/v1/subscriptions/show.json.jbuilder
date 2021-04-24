json.extract! @subscription, :id, :user_id, :olympic_id
json.olympic_title @subscription.olympic.title
json.user_name @subscription.user.name
json.user_cpf @subscription.user.cpf
json.brazil_state_id @subscription.brazil_state.id
json.brazil_state_name @subscription.brazil_state.name
json.county @subscription.county
json.school @subscription.school