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
campus2 = Campus.create(name: "GA New York", google_map_source: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3023.004159240154!2d-73.990082!3d40.739934!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a3c1c4784f%3A0x3884039b8867e84b!2sGeneral+Assembly+West!5e0!3m2!1sen!2suk!4v1406881357769")
campus3 = Campus.create(name: "GA Sydney", google_map_source: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3312.7697626978193!2d151.206423!3d-33.869824!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae3f105571d3%3A0x9b7af12e8add3ca6!2s56-58+York+St%2C+Sydney+NSW+2000%2C+Australia!5e0!3m2!1sen!2suk!4v1406881501145")

londonroom1 = Room.create(name: "London Room 1", campus_id: campus1.id)
londonroom2 = Room.create(name: "London Room 2", campus_id: campus1.id)
londonroom3 = Room.create(name: "London Room 3", campus_id: campus1.id)
newyorkroom1 = Room.create(name: "New York Room 1", campus_id: campus2.id)
newyorkroom2 = Room.create(name: "New York Room 2", campus_id: campus2.id)
newyorkroom3 = Room.create(name: "New York Room 3", campus_id: campus2.id)
sydneyroom1 = Room.create(name: "Sydney Room 1", campus_id: campus3.id)
sydneyroom2 = Room.create(name: "Sydney Room 2", campus_id: campus3.id)
sydneyroom3 = Room.create(name: "Sydney Room 3", campus_id: campus3.id)

course1 = Course.create(name: "Web Development Immersive", description: "Build a work-ready skill set and fluency in full stack web development. Develop a portfolio of projects individually and in small teams that are ready to present to employers. Prepare for an internship or entry-level job as a junior web developer.", campus_id: campus1.id, room_id: londonroom1.id, start_details: DateTime.new(2015, 1, 5), end_details: DateTime.new(2015, 4, 5))
course2 = Course.create(name: "User Experience Design Immersive", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu nisl quis dui blandit interdum. Phasellus pellentesque interdum mauris vitae luctus. Maecenas egestas leo quis risus aliquam, ut accumsan lacus tempor. Sed quis blandit nisl.", campus_id: campus1.id, room_id: londonroom2.id, start_details: DateTime.new(2015, 1, 5), end_details: DateTime.new(2015, 4, 5))
course3 = Course.create(name: "Product Management", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu nisl quis dui blandit interdum. Phasellus pellentesque interdum mauris vitae luctus. Maecenas egestas leo quis risus aliquam, ut accumsan lacus tempor. Sed quis blandit nisl.", campus_id: campus1.id, room_id: londonroom3.id, start_details: DateTime.new(2015, 1, 5), end_details: DateTime.new(2015, 1, 5))

user1 = User.create(name: "Tom", email: "tom@email.com", password: "password1", role: "admin", campus_id: campus1.id, course_ids: [course1.id])
user2 = User.create(name: "David", email: "david@email.com", password: "password2", campus_id: campus1.id, course_ids: [course1.id])
user3 = User.create(name: "Gwen", email: "gwen@email.com", password: "password3", campus_id: campus1.id, course_ids: [course1.id])
user4 = User.create(name: "Gareth", email: "gareth@email.com", password: "password4", campus_id: campus1.id, course_ids: [course1.id])
user5 = User.create(name: "Andrew", email: "andrew@email.com", password: "password5", campus_id: campus1.id, course_ids: [course1.id])
user6 = User.create(name: "Piers", email: "piers@email.com", password: "password6", campus_id: campus1.id, course_ids: [course1.id])
user7 = User.create(name: "Gerry 'Amazeballs' Mathe", email: "gerry@email.com", password: "password7", role: "instructor", campus_id: campus1.id, course_ids: [course1.id])
user8 = User.create(name: "Michael 'I break stuff' Pavling", email: "michael@email.com", password: "password8", role: "instructor", campus_id: campus1.id, course_ids: [course1.id])
user9 = User.create(name: "Mike 'You should have listened to me' Harris", email: "mike@email.com", password: "password3", role: "instructor", campus_id: campus1.id, course_ids: [course1.id])
