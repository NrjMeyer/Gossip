# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
director1 = Director.create(first_name: "Steven", last_name: "Spielberg")
director2 = Director.create(first_name: "Martin", last_name: "Scorsese")
director3 = Director.create(first_name: "Reservoir", last_name: "Dogs")
director4 = Director.create(first_name: "The Great", last_name: "Dictator")
director5 = Director.create(first_name: "Stanley", last_name: "Kubrick")
director1.save
director2.save
director3.save
director4.save
director5.save 


movie1 = Movie.create(title:"A.I. Artificial Inteligence", release_year: 2001)
movie1.director = director1
movie1.save

movie2 = Movie.create(title:"Taxi Driver", release_year: 1976)
movie2.director = director2
movie2.save

movie3 = Movie.create(title:"QuintinTarantino", release_year: 1992)
movie3.director = director3
movie3.save

movie4 = Movie.create(title:"Charles Chaplin", release_year: 1977)
movie4.director = director4
movie4.save

movie5 = Movie.create(title:"A Space Odyssey", release_year: 1968)
movie5.director = director5
movie5.save