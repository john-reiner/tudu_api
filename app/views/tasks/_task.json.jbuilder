json.extract! task, :id, :name, :completed, :created_at, :updated_at
json.list task.list
json.subTasks task.sub_tasks do |sub_task|
    json.name sub_task.name
    json.completed sub_task.completed
    json.url sub_task_url(sub_task)
end

json.url task_url(task)