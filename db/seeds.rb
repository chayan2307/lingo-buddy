require "faker"

User.destroy_all
Review.destroy_all

# location = ['40 New Road London','338 Manor Road London', '12 Manor Road London', '4 Church Street
#   London', '335 Church Road London', '45 West Street London', '20 Victoria Street London', '24 The Green London',
#   '136 Hermitage Rd Harringay London', '250 Randolph Ave London', '55 Old Broad St, London', '26 Great Queen St, London',
#   '20 Vauxhall Bridge Rd', '7 Monohaus 143 Mare St London', '61-63 Uxbridge Rd, London', '3-4 Allied Way London',
#   'Shoreditch Stables, North, 138 Kingsland Rd, London', 'Houghton St, London', '12 Upper St Martin London',
#   '5 Stable St, London', '4 Derry St, London', '22 Kingly St, Carnaby, London', '399 Edgware Rd, London',
#   '136 Hermitage Rd Harringay London']

location = ['91 Green Lane, London, England', '14 The Avenue, London, England', '73 The Drive, London, England', '95 George Street, London, England', '832 Alexander Road, London, England', '2 Manchester Road, London, England', '706 Springfield Road, London, England', '3 School Lane, London, England', '411 Highfield Road, London, England', '662 West Street, London, England', '1 Mill Road, London, England' ]
bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin at ullamcorper turpis. In pretium magna libero, volutpat lacinia risus scelerisque et. Maecenas interdum semper venenatis. Suspendisse id leo fringilla, pharetra sapien eu, gravida velit. Integer neque turpis, vehicula a convallis a, dignissim at ex. Nulla nec bibendum enim. Donec sagittis sodales ante, id luctus turpis. Nullam sed dictum nisi. In hac habitasse platea dictumst. Sed lorem lorem, pretium rhoncus nisl ut, ullamcorper tempus ligula. Vestibulum faucibus ex at bibendum rhoncus. In hac habitasse platea dictumst. Sed eleifend orci ipsum, nec facilisis mi condimentum vel. In eu ligula eleifend, scelerisque ex."
languages = ['Spanish', 'French', 'Italian', 'German', 'Korean', 'Japanese', 'Russian', 'Mandarin', 'Hindi', 'Portuguese', 'Bengali']

puts 'Creating seeds..'

# Language SEEDS BELOW

Language.create(language_name: "English", photo_url: "https://wallpaperaccess.com/full/32525.jpg")
Language.create(language_name: "Spanish", photo_url: "https://wallpaperaccess.com/full/1322197.jpg")
Language.create(language_name: "French", photo_url: "https://wallpaperaccess.com/full/296479.jpg")
Language.create(language_name: "Italian", photo_url: "https://wallpaperaccess.com/full/115103.jpg")
Language.create(language_name: "German", photo_url: "https://wallpaperaccess.com/full/775607.jpg")
Language.create(language_name: "Korean", photo_url: "https://wallpaperaccess.com/full/17672.jpg")
Language.create(language_name: "Japanese", photo_url: "https://wallpaperaccess.com/full/39492.jpg")
Language.create(language_name: "Russian", photo_url: "https://wallpaperaccess.com/full/8198371.jpg")

# STUDENT SEEDS BELOW

User.create(email: 'deborah@email.com', rate: 10, first_name: 'Deborah', last_name: 'Reis', password: "123456")
User.create(email: 'chayan@email.com', rate: 15, first_name: 'Chayan', last_name: 'Agarwal', password: "123456")
User.create(email: 'chun@email.com', rate: 20, first_name: 'Chun', last_name: 'Man', password: "123456")
User.create(email: 'ella@email.com', rate: 25, first_name: 'Ella', last_name: 'Herlihy', password: "123456", photo_url: "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")

# TEACHER SEEDS BELOW

User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://i.pinimg.com/originals/97/ed/6b/97ed6b370803649addbf66144c18c194.png")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-smiling-mixed-race-woman-looking-at-camera-picture-id1319763830?b=1&k=20&m=1319763830&s=170667a&w=0&h=wE44n9yP1nrefeqv5DCl5mE3ouU01FNNHeZPR0yDCWA=")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1573607217032-18299406d100?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8eW91bmclMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1621903570450-b6750dce9350?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1568315081475-d8bbace35dd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1506956191951-7a88da4435e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://st.depositphotos.com/1224365/2498/i/450/depositphotos_24980235-stock-photo-portrait-of-a-normal-man.jpg")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls=")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://cbsnews1.cbsistatic.com/hub/i/2018/11/06/0c1af1b8-155a-458e-b105-78f1e7344bf4/2018-11-06t054310z-1334124005-rc1be15a8050-rtrmadp-3-people-sexiest-man.jpg")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1571745330032-0ed6630a9ccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=791&q=80")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.morganstanley.com/content/dam/msdotcom/people/Careers/wide-isaiah-dwuma.jpg/_jcr_content/renditions/wide_16x9.jpg")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.elitesingles.co.uk/wp-content/uploads/sites/59/2019/11/2b_en_articleslide_sm2-350x264.jpg")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://burst.shopifycdn.com/photos/stylish-man-in-bow-tie.jpg?width=500&format=pjpg&exif=1&iptc=1")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=")
User.create(bio: bio, languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://cdn.shopify.com/s/files/1/1944/0163/files/portrait-of-man-casual-hairstyle.jpg?v=1588112735")

# REVIEW SEEDS BELOW

60.times do
  Review.create!(content: bio, rating: rand(3..5), user_id: rand(1..24))
end

puts "Finished!"
