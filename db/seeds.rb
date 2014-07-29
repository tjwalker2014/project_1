# Seed data to create:
# Users
# Campuses
# Rooms
# Courses
# Instructors
# Admin user?

Campus.delete_all
Room.delete_all
Course.delete_all
User.delete_all

campus1 = Campus.create(name: "GA London", location: "London", google_map_source: "googlesourcecodehere")
campus2 = Campus.create(name: "GA New York", location: "New York", google_map_source: "googlesourcecodehere")
campus3 = Campus.create(name: "GA Sydney", location: "Sydney", google_map_source: "googlesourcecodehere")

room1 = Room.create(name: "Room 1", campus_id: campus1.id)
room2 = Room.create(name: "Room 2", campus_id: campus1.id)
room3 = Room.create(name: "Room 3", campus_id: campus3.id)

course1 = Course.create(name: "Web Development Immersive", description: "blah blah blah", room_id: room1.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 5))
course2 = Course.create(name: "User Experience Design Immersive", description: "blah blah blah", room_id: room2.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 6))
course3 = Course.create(name: "Product Management", description: "blah blah blah", room_id: room3.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 7))

user1 = User.create(name: "Tom", email: "tom@email.com", password: "password", course_id: course1.id)
user2 = User.create(name: "David", email: "david@email.com", password: "password",course_id: course2.id)
user3 = User.create(name: "Gwen", email: "gwen@email.com", password: "password", course_id: course3.id)
