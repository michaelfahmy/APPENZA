# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = File.read('list.json')
hash = JSON.parse(file)

hash.each do |k, v|
	v.each do |m, e|
		User.create(name: k, mobile: m, email:e)
	end
end