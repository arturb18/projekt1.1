# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Farm.destroy_all
Product.destroy_all
u = User.create(email:"arturb18@o2.pl", password:"zaq12wsx",admin: true)


10.times do
f = Farm.create(name: Faker::Name.first_name, description: Faker::Lorem.sentence,
              	offer: Faker::Name.first_name, email: Faker::Internet.email,
               address: Faker::Address.city, user: u)

p = Product.create(name: Faker::Name.first_name, description: Faker::Lorem.sentence,
				price: Faker::Commerce.price,
              	quality: Faker::Name.first_name , user_id: u.id )

end

Farm.all.each do |farm|
	farm.products << Product.all

	4.times do 
 	farm.products << Product.create(name: Faker::Name.first_name, description: Faker::Lorem.sentence,
				price: Faker::Commerce.price,
              	quality: Faker::Name.first_name , user: u )
	end
end
