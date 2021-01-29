# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# CREATE TABLE locations (id SERIAL, name VARCHAR(20), street VARCHAR(20), city VARCHAR(20), state VARCHAR(2), zipcode INT, img1 VARCHAR(200), img2 VARCHAR(200), img3 VARCHAR(200), description VARCHAR(500),);
# INSERT INTO locations (name, street, city, state, zipcode, img1, img2, img3, description) VALUES ("Tree house", "6922 Preston-Fall City Rd SE", "Issaquah", "WA", 98027 , "https://www.treehousepoint.com/images/Upper-Pond-2018-banner.jpg", "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-10.jpg", "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-sh-6.jpg", "This treehouse sleeps 3 with ease. At 200sqft your tiny home awaits you.");
# INSERT INTO locations (name, street, city, state, zipcode, img1, img2, img3, description) VALUES ("Safari Tent", "NA", "Whidbey Island", "WA", 98277 , "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1557747636489/8573666dc063cea4ec69848f22a68398.jpg" , "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559580105738/d4448b2411c5a19cf21dc4c287a113b0.jpg", "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559643869110/c2759d253e4e1578740e06402c680f38.jpg", "There are two romantic glamping tent rentals available at this property centrally located on Whidbey Island in Greenbank, Washington.");
# SELECT * FROM locations,



Location.create([

    {name: "Tree house", street: "6922 Preston-Fall City Rd SE", city: "Issaquah", state: "WA", zipcode: 98027 , img1: "https://www.treehousepoint.com/images/Upper-Pond-2018-banner.jpg", img2: "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-10.jpg", img3: "https://www.treehousepoint.com/images/upper-pond/Upper-TreeHouse-Point-sh-6.jpg", description: "This treehouse sleeps 3 with ease. At 200sqft your tiny home awaits you." },

    {name: "Safari Tent", street: "NA", city: "Whidbey Island", state: "WA", zipcode: "98277" , img1: "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1557747636489/8573666dc063cea4ec69848f22a68398.jpg" , img2: "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559580105738/d4448b2411c5a19cf21dc4c287a113b0.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/romantic-glamping-tent-rentals-on-whidbey-island-in-greenbank-was-1559643869110/c2759d253e4e1578740e06402c680f38.jpg", description: "There are two romantic glamping tent rentals available at this property centrally located on Whidbey Island in Greenbank, Washington." },

    {name: "Hottub Yurt", street: "NA", city: "White Salmon", state: "WA", zipcode: 98672 , img1: "https://media.glampinghub.com/CACHE/images/accommodations/unique-yurt-rental-with-a-hot-tub-in-white-salmon-washington-1562853852865/c9b8c2bb31f8236973ff876fff09b54e.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/unique-yurt-rental-with-a-hot-tub-in-white-salmon-washington-1562853852831/aa4d4a7132a85fb339b2971246c815ab.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/unique-yurt-rental-with-a-hot-tub-in-white-salmon-washington-1562853852821/7753da2bc25b27e1a62fd6e42abc474c.jpg", description: "The 18-sided, custom-built, and beautifully furnished yurt has space to sleep a total of four guests and is a wonderful option for couples or small families." },

    {name: "Bay Yurt", street: "NA", city: "Bay City", state: "OR", zipcode: 97107 , img1: "https://media.glampinghub.com/CACHE/images/accommodations/yurt-on-the-bay-12da045c-47f4-40e2-92d7-a67dbdc3eac5/249990bb7f50e0199db67340ff1dff17.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/yurt-on-the-bay-0708f1a7-1eed-48f0-9f49-73b892ceff73/80dec54bc7194e4f0f160b48ea34736b.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/yurt-on-the-bay-a65bffd2-473e-4cf2-8d8a-e4be96db333a/79bfa4174c6c589441af558c426a64f8.jpg", description: "The design is a contemporary twist on the traditional yurt used by Central Asian nomads." },

    {name: "Zen Tipi", street: "NA", city: "Marcola", state: "OR", zipcode:  97454, img1: "https://media.glampinghub.com/CACHE/images/accommodations/quirky-zen-tipis-pitched-at-charismatic-woodland-retreat-oregon-1461237812533/982d3cf561c14bf56d05e9e7e0e2eaf6.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/quirky-zen-tipis-pitched-at-charismatic-woodland-retreat-oregon-1461237379410/d7cf46cfba42baf5f9867dd46c8bdbd4.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/quirky-zen-tipis-pitched-at-charismatic-woodland-retreat-oregon-1461236523858/70ec869511effcec5b0213ae6fc51b4e.jpg", description: "There are seven tipis in total, each of which can accommodate two guests, with the exception of the Crazy Horse Tipi, which can sleep up to eight guests." },

    {name: "Luxury Tipi", street: "NA", city: "O'Brien", state: "OR", zipcode: 97534, img1: "https://media.glampinghub.com/CACHE/images/accommodations/luxury-camping-tipis-near-siskiyou-national-forest-oregon-1466604826909/f7847c78afb0e144986e7ae75f509b5c.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/luxury-camping-tipis-near-siskiyou-national-forest-oregon-1466604826782/c1a894b670e5b5d341405229e832dbfc.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/luxury-camping-tipis-near-siskiyou-national-forest-oregon-1466604826964/ba89d93a95a66031bcf65e4a20c1eaa9.jpg", description: "Each tipi was blessed by a Native American spiritual leader from the Klamath River Basin and is furnished with futons for sleeping." },

    {name: "Eco-pod", street: "NA", city: "Ridgecrest", state: "CA", zipcode: 93555, img1: "https://media.glampinghub.com/CACHE/images/accommodations/secluded-glamping-eco-pod-rental-in-the-mojave-desert-near-ridgecr-1519657907424/70349b2d29de03ce46aa963d7a7de4c4.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/secluded-glamping-eco-pod-rental-in-the-mojave-desert-near-ridgecr-1553177099519/a3815ebf91e042ea508196fc21a37795.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/secluded-glamping-eco-pod-rental-in-the-mojave-desert-near-ridgecr-1553177086657/2ee20a65fe2674a19eaa8a177f451218.jpg", description: " Here, guests can feel the intensity of the sun and the warm winds during the day and be amazed by the dark, starry sky while snuggled up in a queen-size bed." },

    {name: "Rustic Yurt", street: "NA", city: "Bonsall", state: "CA", zipcode: 92003, img1: "https://media.glampinghub.com/CACHE/images/accommodations/accommodation_57824_listing_image_b24aa5c55ddb449e82317b132142975e-glamping-346f9d57-c220-4cdd-bdb0-5512a22771c6/25a9314065e1d32f89bdde349e936828.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/villa-bonsall-1574078331293/0f0f4a149bfa0b90c8ae8b5dba73a7fa.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/accommodation_57824_listing_image_89195790e4d5423bb2c430aa53eb87ba/08f62c8082442b4d4f737e62946b4c8a.jpg", description: "The yurt is spacious and comes with a queen-size bed and a sofa bed, and can accommodate four glampers comfortably." },

    {name: "Zion Yurt", street: "NA", city: "Orderville", state: "UT", zipcode: 84755, img1: "https://media.glampinghub.com/CACHE/images/accommodations/rustic-yurt-rental-with-incredible-views-near-zion-national-park-1514971248945/627b1fa6294ea0fe366951871df2a684.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/rustic-yurt-rental-with-incredible-views-near-zion-national-park-1514971248962/ef38b3dcd8fab7d4799b39fdc7b8dc84.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/rustic-yurt-rental-with-incredible-views-near-zion-national-park-1514971125025/1c51532c945deb15989c6027e4325194.jpg", description: "This rustic yurt rental with incredible views near Zion National Park, Utah" },

    {name: "Zion Tent", street: "NA", city: "Orderville", state: "UT", zipcode: 84755, img1: "https://media.glampinghub.com/CACHE/images/accommodations/07-glamping-bc8fa9b9-b480-45e6-9f7e-9392867842cb_01-glamping-f47a0bd2-26a3-41f6-8bc5-4b41b4bed240/cfc2ddfcecfa67638dcebe785aa525e3.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/03-glamping-7f5238d9-d8da-42e5-9aa5-c97b9ab12584_01-glamping-81afcfa0-7176-4f1f-93f7-2b450d2b4de6/10ccd805f439bb69dddce874ba3b8df3.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/08-glamping-417676ba-cff6-4740-8048-f02be00232bf/2e35a7bf812ee18c54cb7b5bf883fe64.jpg", description: "his fabulous Utah luxury camping getaway is ideal for up to five guests to enjoy an unforgettable vacation near Zion National Park." },
    
    {name: "Tiny Utah House", street: "NA", city: "Leeds", state: "UT", zipcode: 84746, img1: "https://media.glampinghub.com/CACHE/images/accommodations/modern-tiny-house-with-wi-fi-and-air-conditioning-near-st-george-1574338283612/a035b6455547a0e25cb6978b0f4b1467.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/modern-tiny-house-with-wi-fi-and-air-conditioning-near-st-george-1574338283596/94ab87baaea1b9c59b19e9e85d78e54d.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/modern-tiny-house-with-wi-fi-and-air-conditioning-near-st-george-1574338283418/0a55e589f9d780a49bb812b95d997aaa.jpg", description: "This modern tiny house boasts a fantastic location near St. George, Utah, and features luxury amenities such as Wi-Fi and air conditioning." },

    {name: "Vegas Tipi", street: "NA", city: "Sandy Valley", state: "NV", zipcode: 89019, img1: "https://media.glampinghub.com/CACHE/images/accommodations/unique-tipi-accommodation-for-a-glamping-experience-near-las-vegas-1572883561104/c0f22eb13ae90551da766e0e0afbdf84.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/accommodation_57505_listing_image_56fb4059d798430daa8c658efb4f9ddb/cdb91f9af328f40176a9ed0c70b626e7.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/tiny-house-near-death-valley-tipi-in-the-mojave-near-las-vegas-1571922411988/875b54fac16e07f57afefc6c4bc8e351.jpg", description: "This striking tipi accommodation is located on a working ranch, just 45 minutes from Las Vegas, Nevada, and can house up to two guests on a glamping getaway." },

    {name: "Tiny House on Wheels", street: "NA", city: "Mt Laguna", state: "CA", zipcode: 91948, img1: "https://media.glampinghub.com/CACHE/images/accommodations/3aeab987-e9af-4844-8213-f0671cc77d0b-glamping-797ffea2-31b0-4f43-954f-12e71c35493e_01-glamping-ea1eaeeb-767f-4578-88c6-db29a814920b/da39400c18b850f1afe17b30c8f4885f.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/77fac711-0303-46c9-aef7-35cd372bc31d-glamping-0913e0f8-1b96-4319-93ce-23cd35394911/935ef740e1e9a770abcb110359548bb2.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/672e082e-396f-4a80-a8d6-6c85232bff47-glamping-e75ac1ec-b3d7-47e9-b3a8-eb2b2bc30d7d/62a6f7d397e903e3e77ae42ceeb4c589.jpg", description: "This beautiful Mt Laguna tiny house is ideal for up to four guests to enjoy weekend getaways near San Diego." },

    {name: "Stunning house", street: "NA", city: "Livingston", state: "MT", zipcode: 59047, img1: "https://media.glampinghub.com/CACHE/images/accommodations/673573db-7d3a-4ee8-83cf-a598e84c10ef-glamping-a25776b2-acc5-4a4b-ab41-9d6d26d0e448/88beb396ee6584f2a5100bb6cbcc4bb5.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/15bb3c2a-f05e-4535-887d-f1d3a0523f31-glamping-e1d0e470-b95c-4d38-a863-f35091de1aea/aa3ada1c9552b4145a92b3b767c259eb.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/d10211ea-c5a1-4841-9069-5e620b1548bb-glamping-192d83a8-a3cc-4255-9f60-14e582c593a6/353ec0931bc5d16325e411eec1fc60e1.jpg", description: "This tiny house rental is located just down the road from Livingston, and is ideal for four guests to enjoy wild vacations in Montana's wilderness." },

    {name: "Boho Chic", street: "NA", city: "Willams", state:  "AZ", zipcode: 86046 , img1: "https://media.glampinghub.com/CACHE/images/accommodations/03-glamping-70c315e4-d910-4c89-8eb4-f39343a4a013/72cdcf1290944acc0dc0c474874566e0.jpg", img2: "https://media.glampinghub.com/CACHE/images/accommodations/15-glamping-c04dde1c-7173-4b9b-885c-323169475fb3/98e6b19bdf9e1b2729cbce77e6385dd4.jpg", img3: "https://media.glampinghub.com/CACHE/images/accommodations/30-glamping-88a81977-b9c9-48ea-a82c-50ac51f17539/607041f977643f45c6078f9aaa5db53a.jpg", description: "his Arizona airstream is located in Williams and is just 40 minutes from the South Rim of the Grand Canyon, perfect for glamping near the Grand Canyon." }


])

