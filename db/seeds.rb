# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# dummy data created

domains = ["qut.edu.au", "uq.edu.au", "griffithuni.edu.au"]

times = (1..24).to_a
sizes = ["2", "3", "4", "5", "any"]
purposes = ["meal", "clubing", "light_drinking", "coffee_tea"]
places = ["cbd", "woolloongabba", "south_bank", "milton", "eat_street", "sunnybank", "westend"]


50.times do

	# create users
  email = Faker::Name.first_name.downcase + "@" + domains.sample # justin@qut.edu.au
  password = "password"

  user = User.create(
    email: email,
    password: password
  )

  # create meetings
  Meeting.create(
    user_id: user.id,
    datetime: Faker::Date.forward(7).to_s + " " + times.sample.to_s + ":00",
    size: sizes.sample,
    purpose: purposes.sample,
    place: places.sample
  )
  #user id : 미팅을 누가 만들었는 지 적어야함


end