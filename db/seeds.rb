# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "APICS CPIM Tutoring", description: 'APICS stands for American Production and Inventory Control Society"; CSCP stands for "Certified Supply Chain Professional"',
  image_url: "https://picsbelgium.be/wp-content/uploads/2016/02/APICS-CPIM.jpg", price: 0.99)
Product.create(name: "APICS CSCP Tutoring", description: 'APICS stands for American Production and Inventory Control Society"; CSCP stands for "Certified Supply Chain Professional"',
  image_url: "https://media.licdn.com/media/AAEAAQAAAAAAAAMTAAAAJDRkYTU4YmUyLWJhOTktNDRkNC1iZGVhLTcxZDFjZTAyNmI5Mg.jpg",price: 0.99)
Product.create(name: "E-commerce Web Development", description: 'Basic functions including product display, ordering and payment modules',
    image_url: "http://www.blissitsolutions.com/wp-content/uploads/2017/08/main-qimg-f870db6e2dace1a4b0d20dbfaa1a6f68.png",price: 500)
