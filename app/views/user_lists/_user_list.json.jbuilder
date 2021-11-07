json.extract! user_list, :id, :list_id, :user_id, :created_at, :updated_at
json.username user_list.user.username
json.list user_list.list.name
json.url user_list_url(user_list)