require "faker"
require 'open-uri'
require 'nokogiri'

Booking.destroy_all
Language.destroy_all
Message.destroy_all
Review.destroy_all
Chatroom.destroy_all
User.destroy_all

url = "https://preply.com/en/online/english-tutors"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)
bio = []
reviews = []

html_doc.search(".styles_ShortBio__1YIcj").each do |element|
   bio << element.text.strip
end

# bio = Faker::Lorem.paragraph(sentence_count: 15)

html_doc.search(".styles_ReviewContent__-s6j4").each do |review|
   reviews << review.text.strip
end

# location = ['40 New Road London','338 Manor Road London', '12 Manor Road London', '4 Church Street
#   London', '335 Church Road London', '45 West Street London', '20 Victoria Street London', '24 The Green London',
#   '136 Hermitage Rd Harringay London', '250 Randolph Ave London', '55 Old Broad St, London', '26 Great Queen St, London',
#   '20 Vauxhall Bridge Rd', '7 Monohaus 143 Mare St London', '61-63 Uxbridge Rd, London', '3-4 Allied Way London',
#   'Shoreditch Stables, North, 138 Kingsland Rd, London', 'Houghton St, London', '12 Upper St Martin London',
#   '5 Stable St, London', '4 Derry St, London', '22 Kingly St, Carnaby, London', '399 Edgware Rd, London',
#   '136 Hermitage Rd Harringay London']

location = ['Green Lanes, Stoke Newington, London, England', 'The Avenue, Brent, London, England', 'The Drive, Brent, London, England', 'George Street, Marylebone, London, England', 'Alexander Road, Archway, London, England', 'Manchester Road, Canary Wharf, London, England', 'Springfield Road, South Hampstead, London, England', 'School Lane, Hampton Wick, London, England', 'Highfield Road, Edmonton, London, England', 'West Street, Covent Garden, London, England', 'Mill Road, Colliers Wood, London, England', 'Tandy Place, Hackney Wick, London', 'Stoneleigh Street, Notting Hill, London', 'Broadway Market, Hackney, London', 'Tudor Place, Hackney, London', 'Millfields Road, Hackney, London' ]
languages = ['English', 'Spanish', 'French', 'Italian', 'German', 'Korean', 'Japanese', 'Russian', 'Mandarin', 'Hindi', 'Portuguese', 'Bengali']

puts 'Creating seeds...'

# Language SEEDS BELOW
puts "creating laguages"
Language.create(language_name: "English", photo_url: "https://wallpaperaccess.com/full/32525.jpg")
Language.create(language_name: "Spanish", photo_url: "https://wallpaperaccess.com/full/1322197.jpg")
Language.create(language_name: "French", photo_url: "https://wallpaperaccess.com/full/296479.jpg")
Language.create(language_name: "Hindi", photo_url: "https://wallpaperaccess.com/full/6695097.jpg")
Language.create(language_name: "Italian", photo_url: "https://wallpaperaccess.com/full/115103.jpg")
Language.create(language_name: "German", photo_url: "https://wallpaperaccess.com/full/775607.jpg")
Language.create(language_name: "Korean", photo_url: "https://wallpaperaccess.com/full/17672.jpg")
Language.create(language_name: "Japanese", photo_url: "https://wallpaperaccess.com/full/39492.jpg")
Language.create(language_name: "Russian", photo_url: "https://wallpaperaccess.com/full/8198371.jpg")

# STUDENT SEEDS BELOW
puts "creating users"
User.create(email: 'deborah@email.com', rate: 10, first_name: 'Deborah', last_name: 'Reis', password: "123456")
# User.create(email: 'chayan@email.com', rate: 15, first_name: 'Chayan', last_name: 'Agarwal', password: "123456")
User.create(email: 'chun@email.com', rate: 20, first_name: 'Chun', last_name: 'Man', password: "123456")
User.create(email: 'ella@email.com', rate: 25, first_name: 'Ella', last_name: 'Herlihy', password: "123456", photo_url: "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")

# TEACHER SEEDS BELOW

#FEMALE
puts "creating teachers"
User.create(bio: bio.sample, languages: "English", location: "Evering Road, Hackney, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://i.pinimg.com/originals/97/ed/6b/97ed6b370803649addbf66144c18c194.png")
User.create(bio: bio.sample, languages: "English", location: "Mare Street, Hackney, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-smiling-mixed-race-woman-looking-at-camera-picture-id1319763830?b=1&k=20&m=1319763830&s=170667a&w=0&h=wE44n9yP1nrefeqv5DCl5mE3ouU01FNNHeZPR0yDCWA=")
User.create(bio: bio.sample, languages: "English", location: "Well Street, Hackney, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1573607217032-18299406d100?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8eW91bmclMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
User.create(bio: bio.sample, languages: "English", location: "Margate Road, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://image1.masterfile.com/getImage/NjAwLTAwOTQ4NjcxZW4uMDAwMDAwMDA=AL2-ZR/600-00948671en_Masterfile.jpg")
User.create(bio: bio.sample, languages: "Spanish", location: "Page Street, Westminster, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
User.create(bio: bio.sample, languages: "Spanish", location: "Pall Mall, Westminster, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1621903570450-b6750dce9350?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio.sample, languages: "Spanish", location: "King's Road, Kensington and Chelsea, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio.sample, languages: "Spanish", location: "Bishops Road, Fulham, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/attractive-senior-chinese-woman-smiling-picture-id1156954211?b=1&k=20&m=1156954211&s=170667a&w=0&h=4ajJasG9nC5JwjZv2NCVjNYL2cvztqtuhI_CRr5_3f8=")
User.create(bio: bio.sample, languages: "French", location: "Farm Lane, Fulham, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://t4.ftcdn.net/jpg/05/05/66/21/360_F_505662123_EKv3roI5MF7TLYUV1Gi6B1lzN9H4cbXD.jpg")
User.create(bio: bio.sample, languages: "French", location: "The Boltons, Kensington and Chelsea, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1568315081475-d8bbace35dd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio.sample, languages: "French", location: "Goswell Road, Islington, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(bio: bio.sample, languages: "French", location: "Arlington Road, Camden, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media-s3-us-east-1.ceros.com/forbes/images/2021/12/06/362f5f8159d82d577afb68ea5141cd35/artboard-2-copy-6-4.jpg")
User.create(bio: bio.sample, languages: "Italian", location: "Bowland Road, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://t4.ftcdn.net/jpg/02/18/71/87/360_F_218718766_Pc3cFwBDSUqZtWUuBv2utZazq1joM5Eb.jpg")
User.create(bio: bio.sample, languages: "Italian", location: "Chalk Farm Road, Camden, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
User.create(bio: bio.sample, languages: "Italian", location: "Bardsley Lane, Greenwich, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://t3.ftcdn.net/jpg/02/16/07/68/360_F_216076852_8Hn4FjfX0Pwr13rx00CMqyhwDGTupYFn.jpg")
User.create(bio: bio.sample, languages: "Italian", location: "Baylis Road, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://i.pinimg.com/474x/fd/73/42/fd73421809d30fbadc0b21f01f229fa3--african-american-women-african-americans.jpg")
User.create(bio: bio.sample, languages: "Russian", location: "Earlsfield Road, Wandsworth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.talentedladiesclub.com/site/wp-content/uploads/Michelle-Chandler.jpg")
User.create(bio: bio.sample, languages: "Russian", location: "Sandgate Lane, Wandsworth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://funent.com/uploads/images/Blog/omar-yehia-1178252-unsplash.jpg")
User.create(bio: bio.sample, languages: "Russian", location: "Heathfield Gardens,  Wandsworth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.aljazeera.com/wp-content/uploads/2013/09/2013925204345701525_8.jpeg?resize=1000%2C630")
User.create(bio: bio.sample, languages: "Russian", location: "Edgeley Lane, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGFwcHklMjBhZnJpY2FuJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80")

#MALE

User.create(bio: bio.sample, languages: "Korean", location: "Navarino Road, Hackney, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80")
User.create(bio: bio.sample, languages: "Korean", location: "Richmond Road, Hackney, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://st.depositphotos.com/1224365/2498/i/450/depositphotos_24980235-stock-photo-portrait-of-a-normal-man.jpg")
User.create(bio: bio.sample, languages: "Korean", location: "Brenthouse Road, Hackney, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls=")
User.create(bio: bio.sample, languages: "Korean", location: "Westgrove Lane, Greenwich, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://cdn.shopify.com/s/files/1/1944/0163/files/portrait-of-man-casual-hairstyle.jpg?v=1588112735")
User.create(bio: bio.sample, languages: "Japanese", location: "Retreat Place, Hackney, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://cbsnews1.cbsistatic.com/hub/i/2018/11/06/0c1af1b8-155a-458e-b105-78f1e7344bf4/2018-11-06t054310z-1334124005-rc1be15a8050-rtrmadp-3-people-sexiest-man.jpg")
User.create(bio: bio.sample, languages: "Japanese", location: "Albion Drive, Hackney, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.unsplash.com/photo-1571745330032-0ed6630a9ccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=791&q=80")
User.create(bio: bio.sample, languages: "Japanese", location: "Regent Street, Westminster, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.morganstanley.com/content/dam/msdotcom/people/Careers/wide-isaiah-dwuma.jpg/_jcr_content/renditions/wide_16x9.jpg")
User.create(bio: bio.sample, languages: "Japanese", location: "Lambeth Walk, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://stylesatlife.com/wp-content/uploads/2021/07/Hairstyles-for-Men-over-50-Years.jpg")
User.create(bio: bio.sample, languages: "German", location: "Haldane Road, Fulham, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.elitesingles.co.uk/wp-content/uploads/sites/59/2019/11/2b_en_articleslide_sm2-350x264.jpg")
User.create(bio: bio.sample, languages: "German", location: "Essex Road, Islington, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://burst.shopifycdn.com/photos/stylish-man-in-bow-tie.jpg?width=500&format=pjpg&exif=1&iptc=1")
User.create(bio: bio.sample, languages: "German", location: "Camden Road, Camden, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=")
User.create(bio: bio.sample, languages: "German", location: "Winfrith Road, Wandsworth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "http://d279m997dpfwgl.cloudfront.net/wp/2020/07/Emmanuel-1000x776.jpg")
User.create(bio: bio.sample, languages: "Hindi", location: "North End Road, Fulham, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/mature-african-man-portrait-picture-id180816724?k=20&m=180816724&s=612x612&w=0&h=GzhYNa9LcuyTBVtejayD5mniWgC7iAaIzn1iXG79KSI=")
User.create(bio: bio.sample, languages: "Hindi", location: "Knivet Road, Fulham, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-a-taiwanese-man-picture-id1149504274?k=20&m=1149504274&s=612x612&w=0&h=3yLf9OAkYZ0hB_ezday1W-xpn_o_yjMCo7hX8rBwf4o=")
User.create(bio: bio.sample, languages: "Hindi", location: "Horsford Road, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://images.pond5.com/hispanic-man-city-smile-happy-088159156_prevstill.jpeg")
User.create(bio: bio.sample, languages: "Hindi", location: "Trent Road, Lambeth, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://photos.spareroom.com/images/flatshare/listings/large/20/01/200103922.jpg")
User.create(bio: bio.sample, languages: languages.sample, location: "Blake's Road, Southwark, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://i.pinimg.com/736x/f4/80/a8/f480a84bc0836f4b68cb9f8028343c83--rasta-tattoo-dreadlocks.jpg")
User.create(bio: bio.sample, languages: languages.sample, location: "Furley Road, Southwark, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://www.realmenrealstyle.com/wp-content/uploads/2021/06/man-20s-style.jpg")




# #TEACHER SEEDS FOR DEMO BELOW
# User.create(bio: bio, languages: "Spanish", location: "Evering Road, Hackney, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://static.onecms.io/wp-content/uploads/sites/20/2014/10/frances-mcdormand-1-435.jpg")
# User.create(bio: bio, languages: "Spanish", location: "Mare Street, Hackney, London", email: Faker::Internet.email, rate: 8, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2020-7/Female_Portrait_1296x728-header.jpg?w=1155&h=1528")
# User.create(bio: bio, languages: "Spanish", location: "Well Street, Hackney, London", email: Faker::Internet.email, rate: 6, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://img.freepik.com/free-photo/dreamy-young-woman-sunglasses-looking-front_197531-16739.jpg?w=2000")
# User.create(bio: bio, languages: "Spanish", location: "Navarino Road, Hackney, London", email: Faker::Internet.email, rate: 12, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://static.onecms.io/wp-content/uploads/sites/23/2022/01/14/curly-girl-hair-2000.jpg")
# User.create(bio: bio, languages: "Spanish", location: "Richmond Road, Hackney, London", email: Faker::Internet.email, rate: 9, first_name: Faker::Name.female_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-modern-black-woman-in-oxford-street-in-london-uk-picture-id1054835750?b=1&k=20&m=1054835750&s=170667a&w=0&h=SSPmHsCWIl-ESA4JdLoM7xeP0VYV-8rU0ffYtIUPcJ4=")

# User.create(bio: bio, languages: "Spanish", location: "Brenthouse Road, Hackney, London", email: Faker::Internet.email, rate: 10, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "http://d17zbv0kd7tyek.cloudfront.net/wp-content/uploads/2015/06/leonardo-dicaprio-fb.jpg")
# User.csreate(bio: bio, languages: "Spanish", location: "Retreat Place, Hackney, London", email: Faker::Internet.email, rate: 11, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://us.123rf.com/450wm/dglimages/dglimages1807/dglimages180700174/105059079-front-view-of-a-young-male-adult-looking-and-smiling-at-the-camera-while-he-gets-a-portrait-taken-.jpg?ver=6")
# User.create(bio: bio, languages: "Spanish", location: "Albion Drive, Hackney, London", email: Faker::Internet.email, rate: 7, first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, password: "123456", teacher: true, photo_url: "https://t4.ftcdn.net/jpg/03/03/11/97/360_F_303119721_EabYowCVsPMkCo7UMSGWx4Z2AvNkR7bV.jpg")

#HERO TEACHER SEED FOR DEMO BELOW #33
User.create(bio: "Hola! My name is Andres and I have been on LingoBuddy for 3 years. I love meeting new people and helping them learn Spanish. I live in East London and my day job is being a web developer. If you would like to meet up send me a booking request and we can chat!", languages: "Spanish", location: "Shore Road, Hackney, London", email: "teacher@email.com", rate: 5, first_name: "Andres", last_name: "Garcia", password: "123456", teacher: true, photo_url: "https://media.istockphoto.com/photos/portrait-of-young-man-in-yellow-tshirt-at-backyard-picture-id1180616266?b=1&k=20&m=1180616266&s=170667a&w=0&h=cMM4OlorRa8ONFxDBQHmAus9H-LkhJ2TDH2px2Hr3M8=")

# REVIEW SEEDS BELOW

150.times do
  Review.create!(name: Faker::Name.name, content: reviews.sample, rating: rand(3..5), user_id: User.all.sample.id)
end

# 4.times do
#   Review.create!(content: bio, rating: 5, user_id: 33)
# end

puts "Finished!"
