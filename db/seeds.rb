# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

omaima = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

waleed = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

isis = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

yassin = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

lobna = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

hisham = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})    

yasmeen = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

nabeel = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

suzanne = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

lilian = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

osama = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

layla = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

youssef = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

nadia = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

sherief = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

sahar = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

tarek = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

ahmed = Person.create({
    name: "Ahmed", 
    image: "https://miro.medium.com/fit/c/256/256/2*HTTfSN0OfLCRJmxp4KEVRA.jpeg",
})

amr = Person.create({
    name: "Isis", 
    image: "https://pbs.twimg.com/media/CyzN7AJVEAAGTvO?format=jpg&name=4096x4096",
})

flight1 = Flight.create({
    direction: "arrival",
    datetime: DateTime.now,
    airport: "hobby",
    airline: "frontier",
    number: "653",
    traveler_id: ahmed.id,
})

shuttle1 = Shuttle.create({
    datetime: DateTime.now,
})

ride1 = Ride.create({
    driver_id: isis.id,
    traveler_id: ahmed.id,
    flight: flight1,
    shuttle: shuttle1,
})
