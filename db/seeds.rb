# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"

Movie.destroy_all
Actor.destroy_all
Role.destroy_all

puts "Crating Movies"

movies_array = []

movies_array <<  { name: "Life on Earth", duration: 120000 }
movies_array <<  { name: "Borat in space", duration: 75000 }

movies_array.each do |attributes|
  movie = Movie.create! attributes
  puts "created #{movie.name}"
end



puts "Creating the actors"


actors_array = []

actors_array << { name: "Scarlet Johansen" }
actors_array << { name: "Jessica Alba" }
actors_array << { name: "Beyonce Knowles" }
actors_array << { name: "Ryan Reynolds" }
actors_array << { name: "Rayan Gosling" }
actors_array << { name: "Shahrukh Khan" }

actors_array.each do |attributes|
  actor = Actor.create! attributes
  puts "created #{actor.name}"
end


puts "Seeding the roles"

roles_array = []
roles_array << { title: "Lead", movie: Movie.first, actor: Actor.find_by(name: "Scarlet Johansen" ) }
roles_array << { title: "Vilain", movie: Movie.first,actor: Actor.find_by(name:"Jessica Alba" ) }
roles_array << { title: "Savior" , movie: Movie.last, actor: Actor.find_by(name:"Beyonce Knowles" )}
roles_array << { title: "Hero", movie: Movie.last, actor: Actor.find_by(name:"Ryan Reynolds" ) }
roles_array << { title: "Second Hero", movie: Movie.last, actor: Actor.find_by(name:"Rayan Gosling" ) }
roles_array << { title: "Wise Lover", movie: Movie.first, actor: Actor.find_by(name:"Shahrukh Khan" ) }

roles_array.each do |attributes|
  role = Role.create! attributes
  puts "created #{role.title}"
end


puts "Done with the seed"
