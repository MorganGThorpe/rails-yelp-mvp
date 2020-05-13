# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

mc_donalds = Restaurant.create(name: 'McDonalds', address: '12 court street boulevard, New Humpshire, Old West', phone_number: 33145440842 , category:'chinese')

laplaud = Restaurant.create(name: 'Laplaud', address: ' Littoral de Canne, France', phone_number: 33140440157 , category:'italian')
booboo = Restaurant.create(name: 'Booboo', address: '12 rue du ruban rouge', phone_number: 33234345676 , category:'french')

schnaps = Restaurant.create(name: 'schnaps', address: '12 rue du ruban rouge', phone_number: 33234345676 , category:'chinese')
p schnaps.errors
poudre_verte = Restaurant.create(name: 'poudre verte', address: '12 rue du ruban rouge', phone_number: 33234345676 , category:'french')

Review.destroy_all
another_review = Review.new(content: "trop cool ce resto", rating: 5)
another_review.restaurant = schnaps
another_review.save


first_review = Review.new(content: 'It was ok.', rating: 4)
first_review.restaurant = booboo
first_review.save
p first_review.errors

second_review = Review.new(content: 'It was nice', rating: 5)
second_review.restaurant_id = laplaud.id
second_review.save
