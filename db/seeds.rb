10.times do |t|
 User.create(
    name: "User #{t}",
    email: "user#{t}@gmail.com",
    password: "test1234",
    usertype: "developer",
	)
end
puts "Created #{User.count} users."