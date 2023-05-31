require "open-uri"

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
file_01 = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user1.photo.attach(io: file_01,
  filename: "pic01.png",
  content_type: "image/png")
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

puts "Creating resis ..."
@space1 = Space.new(
  name: "Fancy salon for musical rehearsal",
  description: "It’s a small, but well-decorated space for having a charming performance. A vertical piano is already there to use. It is is possible to use a PA system, just ask in advance for it. I’ve been using this space regularly during the past years and produced two of my last solo albums. There is a kitchenette next to the salon for having some hot beverages and warming food.",
  daily_cost: 15
  # address: SPACES_ADDRESSES.sample(1)
)
@space1.user = @user1
@space1.photos.attach(io: File.open(Rails.root.join("app/assets/images/1_musicsalon.jpeg")), filename: "1_musicsalon")
@space1.save!
puts "Created resi #{Space.last.id}"

@space2 = Space.new(
  name: "Pottery Atelier",
  description: "It is a well-illuminated room with plenty of space for showcasing and storing small objects. I’m using it for pottery small items, but it could be used for jewelry or small sculptures.",
  daily_cost: 10
  # address: SPACES_ADDRESSES.sample(1)
)
@space2.user = @user2
@space2.photos.attach(io: File.open(Rails.root.join("app/assets/images/2_pottery.jpeg")), filename: "2_pottery")
@space2.save!
puts "Created resi #{Space.last.id}"

@space3 = Space.new(
  name: "Painting room",
  description: "The room has 30sq m and is fully equipped with more canvas holders. The room is usually busy during weekends, but I borrow it for the rest of the weekdays.",
  daily_cost: 8
  # address: SPACES_ADDRESSES.sample(1)
)
@space3.user = @user3
@space3.photos.attach(io: File.open(Rails.root.join("app/assets/images/3_painting_01.jpeg")), filename: "3_painting_01")
@space3.photos.attach(io: File.open(Rails.root.join("app/assets/images/3_painting_02.jpeg")), filename: "3_painting_02")
@space3.save!
puts "Created resi #{Space.last.id}"

@space4 = Space.new(
  name: "Industrial space for painting and spraying",
  description: "It is actually part of a larger space owned by a community of artists from different fields. I borrow my studio from Thursdays to Sundays. The space is 80 sq m and well-ventilated, it, therefore, allows to use of aerial painting techniques on large canvases.",
  daily_cost: 12
  # address: SPACES_ADDRESSES.sample(1)
)
@space4.user = @user4
@space4.photos.attach(io: File.open(Rails.root.join("app/assets/images/4_painting_01.jpeg")), filename: "4_painting_01")
@space4.photos.attach(io: File.open(Rails.root.join("app/assets/images/4_painting_02.jpeg")), filename: "4_painting_02")
@space4.save!
puts "Created resi #{Space.last.id}"

@space5 = Space.new(
  name: "Large hall for installations and performances",
  description: "I’m usually organising some private events here and host some local artist, giving them a large space to stage their performances and acts. Please book in advance to ensure its availability.",
  daily_cost: 18
  # address: SPACES_ADDRESSES.sample(1)
)
@space5.user = @user5
@space5.photos.attach(io: File.open(Rails.root.join("app/assets/images/5_installations.jpeg")), filename: "5_installations")
@space5.save!
puts "Created resi #{Space.last.id}"

@space6 = Space.new(
  name: "Essential Recording Studio",
  description: "This is a actually small, cozy room from my main house and I occasionally use it for professional recording of string instruments and voice.",
  daily_cost: 3
  # address: SPACES_ADDRESSES.sample(1)
)
@space6.user = @user6
@space6.photos.attach(io: File.open(Rails.root.join("app/assets/images/6_musicstudio.jpeg")), filename: "6_musicstudio")
@space6.save!
puts "Created resi #{Space.last.id}"

@space7 = Space.new(
  name: "Digital Music Studio",
  description: "The room is dark, but it has a special atmosphere given by colored stage lights and the many synthesizers ready to play in the room. I’ve been using it to produce music for the last few years, now I’m slowly transitioning to a new space and I mostly borrow it during weekends.",
  daily_cost: 5
  # address: SPACES_ADDRESSES.sample(1)
)
@space7.user = @user7
@space7.photos.attach(io: File.open(Rails.root.join("app/assets/images/7_musicstudio.jpeg")), filename: "7_musicstudio")
@space7.save!
puts "Created resi #{Space.last.id}"

@space8 = Space.new(
  name: "Attic for Drawing",
  description: "I hardly find a space that is as calm as my attic space. Some large sky windows light the space giving it a floating feeling. It is perfect for drawing and sketching. A large table is already there to use.",
  daily_cost: 3
  # address: SPACES_ADDRESSES.sample(1)
)
@space8.user = @user8
@space8.photos.attach(io: File.open(Rails.root.join("app/assets/images/8_drawingattic.jpeg")), filename: "8_drawingattic")
@space8.save!
puts "Created resi #{Space.last.id}"

@space9 = Space.new(
  name: "Creative Garage",
  description: "It has every kind of tool needed to prototype fast ideas or to build something bigger. There is plenty of space inside and next to the garage.",
  daily_cost: 8
  # address: SPACES_ADDRESSES.sample(1)
)
@space9.user = @user9
@space9.photos.attach(io: File.open(Rails.root.join("app/assets/images/9_creativegarage_01.jpeg")), filename: "9_creativegarage_01")
@space9.photos.attach(io: File.open(Rails.root.join("app/assets/images/9_creativegarage_02.jpeg")), filename: "9_creativegarage_02")
@space9.save!
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

# Attach User photo for each user, complete dashboard info

puts "Seeding complete!"
