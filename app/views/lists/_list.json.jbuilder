json.extract! list, :id, :name, :created_at, :updated_at
json.tasks list.tasks do |task|
    json.name task.name
    json.completed task.completed
    json.subTasks task.sub_tasks do |sub_task|
        json.name sub_task.name
        json.completed sub_task.completed
        json.url sub_task_url(sub_task)
    end
    json.url task_url(task)
end
json.users list.users do |user|
    json.username user.username
end 
json.url list_url(list)