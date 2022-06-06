require "faker"

User.destroy_all

location = ['40 New Road London','338 Manor Road London', '12 Manor Road London', '4 Church Street
  London', '335 Church Road London', '45 West Street London', '20 Victoria Street London', '24 The Green London',
  '136 Hermitage Rd Harringay London', '250 Randolph Ave London', '55 Old Broad St, London', '26 Great Queen St, London',
  '20 Vauxhall Bridge Rd', '7 Monohaus 143 Mare St London', '61-63 Uxbridge Rd, London', '3-4 Allied Way London',
  'Shoreditch Stables, North, 138 Kingsland Rd, London', 'Houghton St, London', '12 Upper St Martin London',
  '5 Stable St, London', '4 Derry St, London', '22 Kingly St, Carnaby, London', '399 Edgware Rd, London',
  '136 Hermitage Rd Harringay London']

  languages = ['Spanish', 'French', 'Italian', 'German', 'Korean', 'Japanese','Russian']

puts 'Creating users..'

# STUDENT SEEDS BELOW

User.create(email: 'deborah@email.com', rate: 10, first_name: 'Deborah', last_name: 'Reis', password: "123456")
User.create(email: 'chayan@email.com', rate: 15, first_name: 'Chayan', last_name: 'Agarwal', password: "123456")
User.create(email: 'chun@email.com', rate: 20, first_name: 'Chun', last_name: 'Man', password: "123456")
User.create(email: 'ella@email.com', rate: 25, first_name: 'Ella', last_name: 'Herlihy', password: "123456", photo_url: "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")

# TEACHER SEEDS BELOW

User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")
User.create(languages: languages.sample, location: location.sample, email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.rover.com/cf-image-cdn/remote/images/people/gBep1VON/qngtsazoeh/original?width=300&height=300&quality=70&fit=cover")

puts "Finished!"
