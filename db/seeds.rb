10.times do |t|
 User.create(
    name: "User #{t}",
    email: "user#{t}@gmail.com",
    password: "test1234",
    usertype: "developer",
	)
end
puts "Created #{User.count} users."
10.times do |t|
 Project.create(
    name: "Project #{t}",
    manager_id: "#{User.first.id}",
   )
end
puts "Created #{Project.count} Projects."
10.times do |t|
 UserProject.create(
    user_id: "2",
    project_id: "2",
   )
end
puts "Created #{UserProject.count} UserProject."
10.times do |t|
 Bug.create(
    description: "This is test bug...",
    title: "Error!",
    deadline: Date.today,
    screenshot: "hello.png",
    creator_id: "2",
    developer_id: "3",
    project_id: "4",
   )
end
puts "Created #{Bug.count} Bugs."