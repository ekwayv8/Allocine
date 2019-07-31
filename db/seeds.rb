# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Permet de créer une liste de faux users avec la gem Faker
require 'faker'
100.times do
	year_movie = rand(1900..2020)
	allo_rating = rand(0.0..5.0).round(1)

	genre_choice = ["action", "horreur", "comédie", "drame"].sample(1)
  movie = Movie.create!(name: Faker::Book.title, year: year_movie, genre: genre_choice, synopsis: Faker::Lorem.sentence(word_count: 10), director: Faker::Name.name ,allocine_rating: allo_rating, my_rating: nil, already_seen: false)
#Other method for the name of the director: Faker::Book.author
end