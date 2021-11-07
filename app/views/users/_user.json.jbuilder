json.extract! user, :id, :username, :created_at, :updated_at
json.lists user.lists do |list|
    json.name list.name
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
    json.url list_url(list)
end
json.url user_url(user)

