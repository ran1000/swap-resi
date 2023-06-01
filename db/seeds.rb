require "open-uri"

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
file_02 = URI.open("https://images.unsplash.com/photo-1602178856779-d57888ae2f8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=955&q=80")
@user2.photo.attach(io: file_02,
  filename: "pic02.png",
  content_type: "image/png")
@user2.save!
puts "Created user #{User.last.id}"
@user3 = User.new(
  username: "ray7894",
  email: "ray.paintings@art.com",
  password: "qwe123"
)
file_03 = URI.open("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user3.photo.attach(io: file_03,
  filename: "pic03.png",
  content_type: "image/png")
@user3.save!
puts "Created user #{User.last.id}"
@user4 = User.new(
  username: "gelly1",
  email: "gelly.star@gmail.com",
  password: "qwe123"
)
file_04 = URI.open("https://images.unsplash.com/photo-1579533183840-16ee351d4dfb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1279&q=80")
@user4.photo.attach(io: file_04,
  filename: "pic04.png",
  content_type: "image/png")
@user4.save!
puts "Created user #{User.last.id}"
@user5 = User.new(
  username: "michaelr",
  email: "michael.reynolds@moc.com",
  password: "qwe123"
)
file_05 = URI.open("https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user5.photo.attach(io: file_05,
  filename: "pic05.png",
  content_type: "image/png")
@user5.save!
puts "Created user #{User.last.id}"
@user6 = User.new(
  username: "noll33",
  email: "nolan.ammac@live.com",
  password: "qwe123"
)
file_06 = URI.open("https://images.unsplash.com/photo-1529758146491-1e11fd721f77?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user6.photo.attach(io: file_06,
  filename: "pic06.png",
  content_type: "image/png")
@user6.save!
puts "Created user #{User.last.id}"
@user7 = User.new(
  username: "mark132",
  email: "mark.thomson@yahoo.com",
  password: "qwe123"
)
file_07 = URI.open("https://images.unsplash.com/photo-1517702145080-e4a4d91435bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user7.photo.attach(io: file_07,
  filename: "pic07.png",
  content_type: "image/png")
@user7.save!
puts "Created user #{User.last.id}"
@user8 = User.new(
  username: "jensar",
  email: "sara.jenkins@gmail.com",
  password: "qwe123"
)
file_08 = URI.open("https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80")
@user8.photo.attach(io: file_08,
  filename: "pic08.png",
  content_type: "image/png")
@user8.save!
puts "Created user #{User.last.id}"
@user9 = User.new(
  username: "rudy209",
  email: "rudolf.moser@bluewin.de",
  password: "qwe123"
)
file_09 = URI.open("https://images.unsplash.com/photo-1535643302794-19c3804b874b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80")
@user9.photo.attach(io: file_09,
  filename: "pic09.png",
  content_type: "image/png")
@user9.save!
puts "Created user #{User.last.id}"

puts "Creating spaces ..."
@space1 = Space.new(
  name: "Fancy salon for musical rehearsal",
  description: "It’s a small, but well-decorated space for having a charming performance. A vertical piano is already there to use. It is is possible to use a PA system, just ask in advance for it. I’ve been using this space regularly during the past years and produced two of my last solo albums. There is a kitchenette next to the salon for having some hot beverages and warming food.",
  daily_cost: 15
  # address: SPACES_ADDRESSES.sample(1)
)
@space1.user = @user1
@space1.photos.attach(io: File.open(Rails.root.join("app/assets/images/1_musicsalon.jpeg")), filename: "1_musicsalon")
@space1.save!
puts "Created space #{Space.last.id}"

@space2 = Space.new(
  name: "Pottery Atelier",
  description: "It is a well-illuminated room with plenty of space for showcasing and storing small objects. I’m using it for pottery small items, but it could be used for jewelry or small sculptures.",
  daily_cost: 10
  # address: SPACES_ADDRESSES.sample(1)
)
@space2.user = @user2
@space2.photos.attach(io: File.open(Rails.root.join("app/assets/images/2_pottery.jpeg")), filename: "2_pottery")
@space2.save!
puts "Created space #{Space.last.id}"

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
puts "Created space #{Space.last.id}"

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
puts "Created space #{Space.last.id}"

@space5 = Space.new(
  name: "Large hall for installations and performances",
  description: "I’m usually organising some private events here and host some local artist, giving them a large space to stage their performances and acts. Please book in advance to ensure its availability.",
  daily_cost: 18
  # address: SPACES_ADDRESSES.sample(1)
)
@space5.user = @user5
@space5.photos.attach(io: File.open(Rails.root.join("app/assets/images/5_installations.jpeg")), filename: "5_installations")
@space5.save!
puts "Created space #{Space.last.id}"

@space6 = Space.new(
  name: "Essential Recording Studio",
  description: "This is a actually small, cozy room from my main house and I occasionally use it for professional recording of string instruments and voice.",
  daily_cost: 3
  # address: SPACES_ADDRESSES.sample(1)
)
@space6.user = @user6
@space6.photos.attach(io: File.open(Rails.root.join("app/assets/images/6_musicstudio.jpeg")), filename: "6_musicstudio")
@space6.save!
puts "Created space #{Space.last.id}"

@space7 = Space.new(
  name: "Digital Music Studio",
  description: "The room is dark, but it has a special atmosphere given by colored stage lights and the many synthesizers ready to play in the room. I’ve been using it to produce music for the last few years, now I’m slowly transitioning to a new space and I mostly borrow it during weekends.",
  daily_cost: 5
  # address: SPACES_ADDRESSES.sample(1)
)
@space7.user = @user7
@space7.photos.attach(io: File.open(Rails.root.join("app/assets/images/7_musicstudio.jpeg")), filename: "7_musicstudio")
@space7.save!
puts "Created space #{Space.last.id}"

@space8 = Space.new(
  name: "Attic for Drawing",
  description: "I hardly find a space that is as calm as my attic space. Some large sky windows light the space giving it a floating feeling. It is perfect for drawing and sketching. A large table is already there to use.",
  daily_cost: 3
  # address: SPACES_ADDRESSES.sample(1)
)
@space8.user = @user8
@space8.photos.attach(io: File.open(Rails.root.join("app/assets/images/8_drawingattic.jpeg")), filename: "8_drawingattic")
@space8.save!
puts "Created space #{Space.last.id}"

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
puts "Created space #{Space.last.id}"

puts "Creating Bookings..."
@booking1 = Booking.new(
  message: "Hey mariapot! I'm really impressed with your atelier space on arting. Would it be possible for me to stay there for a couple of days? I'm an artist working on a project and your space looks perfect. Let me know if we can discuss the details. Thanks!",
  start_date: Date.parse("02-06-2023"),
  end_date: Date.parse("05-06-2023"),
  status: 0
)
@booking1.space = @space2
@booking1.user = @user1
@booking1.save!
puts "Created booking #{Space.last.id}"
@booking2 = Booking.new(
  message: "Hi lenlen! Your atelier space on the platform caught my eye. It's amazing! I'm an artist in need of a workspace for a week. Your atelier seems like the perfect fit. Would you consider letting me stay? I promise to take great care of the space. Let's chat and see if we can work something out. Thanks!",
  start_date: Date.parse("11-06-2023"),
  end_date: Date.parse("18-06-2023"),
  status: 1
)
@booking2.space = @space1
@booking2.user = @user5
@booking2.save!
puts "Created booking #{Space.last.id}"

puts "Seeding complete!"
