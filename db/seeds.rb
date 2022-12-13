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
@user1 = User.new(
  username: "lenlen",
  email: "len.maridov@gmail.com",
  password: "qwe123"
)
@user1.save!
puts "Created user #{User.last.id}"
@user2 = User.new(
  username: "mariapot",
  email: "maria.smith@outlook.com",
  password: "qwe123"
)
@user2.save!
puts "Created user #{User.last.id}"
@user3 = User.new(
  username: "ray7894",
  email: "ray.paintings@art.com",
  password: "qwe123"
)
@user3.save!
puts "Created user #{User.last.id}"
@user4 = User.new(
  username: "gelly1",
  email: "gelly.star@gmail.com",
  password: "qwe123"
)
@user4.save!
puts "Created user #{User.last.id}"
@user5 = User.new(
  username: "michaelr",
  email: "michael.reynolds@moc.com",
  password: "qwe123"
)
@user5.save!
puts "Created user #{User.last.id}"
@user6 = User.new(
  username: "noll33",
  email: "nolan.ammac@live.com",
  password: "qwe123"
)
@user6.save!
puts "Created user #{User.last.id}"
@user7 = User.new(
  username: "mark132",
  email: "mark.thomson@yahoo.com",
  password: "qwe123"
)
@user7.save!
puts "Created user #{User.last.id}"
@user8 = User.new(
  username: "jensar",
  email: "sara.jenkins@gmail.com",
  password: "qwe123"
)
@user8.save!
puts "Created user #{User.last.id}"
@user9 = User.new(
  username: "rudy209",
  email: "rudolf.moser@bluewin.de",
  password: "qwe123"
)
@user9.save!
puts "Created user #{User.last.id}"

puts "Created resis ..."
@space1 = Space.new(
  name: "Fancy salon for musical rehearsal",
  description: "It’s a small, but well decorated space for having a charming performance. A vertical piano is already there to use. It is is possible to use a PA system, just ask in advance for it. I’ve been using this space regularly during the past years and produced two of my last solo albums. There is a kitchenette next to the salon for having some hot beverages and warming food.",
  daily_cost: 5
  # address: SPACES_ADDRESSES.sample(1)
)
@space1.user = @user1
@space1.photos.attach(io: File.open(Rails.root.join("app/assets/images/1_musicsalon.jpeg")), filename: "1_musicsalon")
@space1.save!
puts "Created resi #{Space.last.id}"

# puts "Creating Bookings..."
# 5.times do
#   @booking = Booking.new(
  #     message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
  #     start_date: Date.today,
  #     end_date: Date.tomorrow
  #   )
  #   @booking.space = Space.all[rand(0..(User.count - 1))]
  #   @booking.user = User.all[rand(0..(User.count - 1))]
  #   @booking.save!
  #   puts "Created booking #{Booking.last.id}"
  # end

  puts "Seeding complete!"
