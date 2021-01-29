# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CREATE TABLE locations (id SERIAL, name VARCHAR(20), street VARCHAR(20), city VARCHAR(20), state VARCHAR(2), zipcode INT, img1 VARCHAR(200), img2 VARCHAR(200), img3 VARCHAR(200), description VARCHAR(500),);
INSERT INTO locations (name, street, city, state, zipcode, img1, img2, img3, description) VALUES ("Tree house", "6922 Preston-Fall City Rd SE", "Issaquah", "WA", 98027 , "https://www.treehousepoint.com/images/Upper-Pond-2018-banner.jpg", "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-10.jpg", "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-sh-6.jpg", "This treehouse sleeps 3 with ease. At 200sqft your tiny home awaits you.");
INSERT INTO locations (name, street, city, state, zipcode, img1, img2, img3, description) VALUES ("Safari Tent", "NA", "Whidbey Island", "WA", 98277 , "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1557747636489/8573666dc063cea4ec69848f22a68398.jpg" , "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559580105738/d4448b2411c5a19cf21dc4c287a113b0.jpg", "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559643869110/c2759d253e4e1578740e06402c680f38.jpg", "There are two romantic glamping tent rentals available at this property centrally located on Whidbey Island in Greenbank, Washington.");
SELECT * FROM locations,


