# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(
 title: 'Test',
 blurb: 'A test blurb. . .',
 body: 'A test body. . .',
 picture: 'tile.jpg')
Post.create(
 title: 'Another Test',
 blurb: 'Another test blurb. . .',
 body: 'Another test body. . .',
 picture: 'some/other/test/path')