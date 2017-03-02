# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
School.create(name: 'University of Greenhouse')

User.create(email: 'mhasnat@example.com', password: 'Password111', password_confirmation: 'Password111', first_name: 'Muntasir', last_name: 'Hasnat')