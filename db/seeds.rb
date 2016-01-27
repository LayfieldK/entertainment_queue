# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
entertainment_item_types = EntertainmentItemType.create([{name: 'Movie', css_class: 'movie'},{name: 'TV', css_class: 'tv'},{name: 'Book', css_class: 'book'},{name: 'Video Game', css_class: 'videogame'},{name: 'Music', css_class: 'music'}])


