# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# SPACES_ADDRESSES = [
#   "Besselstraße, 10969 Berlin",
#   "Scheidemannstraße 1, 10557 Berlin",
#   "Georgenstraße 14, 10117 Berlin",
#   "Leipziger Str. 111, 10117 Berlin",
#   "Alte Jakobstraße 111, 10969 Berlin",
#   "Linkstraße 10, 10785 Berlin",
#   "Am Lustgarten 1, 10178 Berlin",
#   "Rungestraße 31, 10179 Berlin",
#   "Lindenstraße 14, 10969 Berlin",
#   "Pariser Platz, 10117 Berlin",
#   "Askanischer Pl. 2, 10963 Berlin",
#   "Charlottenstraße 49, 10117 Berlin",
#   "Hausvogteipl. 11, 10117 Berlin",
#   "Lausitzer Pl. 5, 10997 Berlin",
#   "Planufer 96, 10967 Berlin",
#   "Weinbergsweg 8, 10119 Berlin",
#   "Erich-Steinfurth-Straße 11, 10243 Berlin",
#   "Friedenstraße, 10249 Berlin",
#   "Schlesische Str. 42, 10997 Berlin",
#   "Hasenheide park, 12049 Berlin",
#   "Straße 645, Am Tempelhofer Feld, 12049 Berlin",
#   "Schillerpromenade 5, 12049 Berlin",
#   "Mainzer Str., 12053 Berlin",
#   "Elbestraße 1 Ecke, Sonnenallee, 12045 Berlin",
#   "Sonnenallee 4, 10967 Berlin",
#   "Leipziger Pl. 12, 10117 Berlin",
#   "Georgenstraße 14/17, 10117 Berlin",
#   "Am Zwirngraben, 10178 Berlin",
#   "Grunerstraße 20, 10179 Berlin"
# ].freeze

puts 'Sweeping seeds'
Booking.destroy_all
Space.destroy_all
User.destroy_all
puts 'DB emptied'

puts 'Creating Users...'
3.times do
  @user = User.new(
    username: "user" + Faker::Name.first_name,
    email: Faker::Internet.email,
    password: "123123"
  )
  @user.save!
  puts "Created user #{User.last.id}"
end

puts 'Creating Resis...'
12.times do
  @space = Space.new(
    name: Faker::Restaurant.name,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
    daily_cost: rand(3..10),
    # address: SPACES_ADDRESSES.sample(1)
  )
  @space.user = User.all[rand(0..(User.count - 1))]
  @space.save!
  puts "Created resi #{Space.last.id}"
end

puts "Creating Bookings..."
5.times do
  @booking = Booking.new(
    message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
    start_date: Date.today,
    end_date: Date.tomorrow
  )
  @booking.space = Space.all[rand(0..(User.count - 1))]
  @booking.user = User.all[rand(0..(User.count - 1))]
  @booking.save!
  puts "Created booking #{Booking.last.id}"
end
