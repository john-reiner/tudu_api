# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |user|
    User.create!(
        username: "user #{user}"
    )
end

10.times { List.create!(name: Faker::Lorem.word)}
20.times do |user_list|
    UserList.create!(
        user_id: rand(1..10),
        list_id: rand(1..10)
    )
end


50.times { Task.create!(name: Faker::Lorem.word, completed: false, list_id: rand(1..10))}

100.times { SubTask.create!(name: Faker::Lorem.word, completed: false, task_id: rand(1..50))}