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

campus1 = Campus.create(name: "GA London", google_map_source: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2482.4999453979103!2d-0.1095657!3d51.522389499999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761b4ee5ee27bd%3A0x2395e7c1d5fc965f!2sLondon+EC1R+5EN!5e0!3m2!1sen!2suk!4v1406733550524")
campus2 = Campus.create(name: "GA New York", google_map_source: "googlesourcecodehere")
campus3 = Campus.create(name: "GA Sydney", google_map_source: "googlesourcecodehere")

londonroom1 = Room.create(name: "London Room 1", campus_id: campus1.id)
londonroom2 = Room.create(name: "London Room 2", campus_id: campus1.id)
londonroom3 = Room.create(name: "London Room 3", campus_id: campus1.id)
newyorkroom1 = Room.create(name: "New York Room 1", campus_id: campus2.id)
newyorkroom2 = Room.create(name: "New York Room 2", campus_id: campus2.id)
newyorkroom3 = Room.create(name: "New York Room 3", campus_id: campus2.id)
sydneyroom1 = Room.create(name: "Sydney Room 1", campus_id: campus3.id)
sydneyroom2 = Room.create(name: "Sydney Room 2", campus_id: campus3.id)
sydneyroom3 = Room.create(name: "Sydney Room 3", campus_id: campus3.id)

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

