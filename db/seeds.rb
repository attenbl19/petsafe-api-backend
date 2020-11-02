# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'yelp/fusion'
# require 'dotenv'
# Dotenv.load

# client = Yelp::Fusion::Client.new(ENV["YELP_API_KEY"])
# response = client.search('New York City', term: 'pet services')

Category.destroy_all
OfferedService.destroy_all
PetCareBusiness.destroy_all
AnimalKind.destroy_all



############################### CATERGORY SEEDS ################################
puts "creating categories"
    birds = Category.create(name: "Birds")
    cats = Category.create(name: "Cats")
    dogs = Category.create(name: "Dogs")
    exotic anmimals = Category.create(name: "Exotic Animals")
    small mammals = Category.create(name: "Small Mammals")
puts "finished creating categories"



####################### SEEDS FOR PET CARE BUSINESS #######################
puts "creating Pet Business"
20.times do |i|
    PetCareBusiness.create!(
        title: Faker::Company.name
        description: Faker::Company.catch_phrase
        street_address: Faker::Address.street_address
        city: Faker::Address.city
        state: Faker::Address.state
        zip_code: Faker::Address.zip_code
        image: "https://dog.ceo/api/breeds/image/random"
        
    )
end
puts "finished creating Pet Business"



############################ SEEDS FOR SERVICE TYPE ########################
puts "creating service type"
    # Home Care
    homeVisits = OfferedService.create(service_type: "Home Visits")
    stayOver = OfferedService.create(service_type: "Stay Overnight")
    boarding = OfferedService.create(service_type: "Boarding")
puts "finished creating service type"



################################# SEEDS FOR PET TYPE ##########################3#
puts "creating pet kind"
# Type of Pet Owened"
    bird = AnimalKind.create(kind: "Bird")
    cat = AnimalKind.create(kind: "Cat")
    dog = AnimalKind.create(kind: "Dog")
    exotic anmimal = AnimalKind.create(kind: "Exotic Animal")
    small mammal = AnimalKind.create(kind: "Small Mammal")
puts "finished creating pet kind"

################################# SEEDS FOR USER ###############################

puts "creating user"
    #user info
    twilo = User.create(username: "twilo", password: "4321Happy")
