# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seed with initial books. Named after controller 'Bookshelf'
Bookshelf.create!(title: 'Age of Innocence', author: 'Edith Wharton')
Bookshelf.create!(title:'Pride and Prejudice', author: 'Jane Austen')