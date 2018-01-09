# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.delete_all

creatures = [{
  name: 'Sam', 
  description: 'human'
}, {
  name: 'Bob', 
  description: 'another human'
}]

creatures.each do |creature|
  Creature.create(creature)
end

puts "all Creatures created!"