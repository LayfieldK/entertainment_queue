# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
entertainment_item_types = EntertainmentItemType.create([{name: 'Movie', css_class: 'movie', consumed_phrase: 'Watched it!'},{name: 'TV', css_class: 'tv', consumed_phrase: 'Watched it!'},{name: 'Book', css_class: 'book', consumed_phrase: 'Read it!'},{name: 'Video Game', css_class: 'videogame', consumed_phrase: 'Played it!'},{name: 'Music', css_class: 'music', consumed_phrase: 'Listened to it!'}])


