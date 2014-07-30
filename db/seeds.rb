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

campus1 = Campus.create(name: "GA London", google_map_source: "googlesourcecodehere")
campus2 = Campus.create(name: "GA New York", google_map_source: "googlesourcecodehere")
campus3 = Campus.create(name: "GA Sydney", google_map_source: "googlesourcecodehere")

londonroom1 = Room.create(name: "Room 1", campus_id: campus1.id)
londonroom2 = Room.create(name: "Room 2", campus_id: campus1.id)
londonroom3 = Room.create(name: "Room 3", campus_id: campus1.id)
newyorkroom1 = Room.create(name: "Room 1", campus_id: campus2.id)
newyorkroom2 = Room.create(name: "Room 2", campus_id: campus2.id)
newyorkroom3 = Room.create(name: "Room 3", campus_id: campus2.id)
sydneyroom1 = Room.create(name: "Room 1", campus_id: campus3.id)
sydneyroom2 = Room.create(name: "Room 2", campus_id: campus3.id)
sydneyroom3 = Room.create(name: "Room 3", campus_id: campus3.id)

course1 = Course.create(name: "Web Development Immersive", description: "blah blah blah", campus_id: campus1.id, room_id: londonroom1.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 5))
course2 = Course.create(name: "User Experience Design Immersive", description: "blah blah blah", campus_id: campus1.id, room_id: londonroom2.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 6))
course3 = Course.create(name: "Product Management", description: "blah blah blah", campus_id: campus1.id, room_id: londonroom3.id, start_details: DateTime.new(2014, 8, 4), end_details: DateTime.new(2014, 8, 7))

user1 = User.create(name: "Tom", email: "tom@email.com", password: "password", role: "student", campus_id: campus1.id)
user2 = User.create(name: "David", email: "david@email.com", password: "password", role: "student", campus_id: campus1.id)
user3 = User.create(name: "Gwen", email: "gwen@email.com", password: "password", role: "student", campus_id: campus1.id)

user1.course_ids = [course1.id]
user2.course_ids = [course1.id]
user3.course_ids = [course3.id]

#binding.pry

# user1.save!
# user2.save!
# user3.save!

# course1.user_ids << user1.id
# course3.user_ids << user3.id

