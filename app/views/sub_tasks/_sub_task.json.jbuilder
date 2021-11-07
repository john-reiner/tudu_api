json.extract! sub_task, :id, :name, :created_at, :updated_at
json.task sub_task.task
json.url sub_task_url(sub_task)