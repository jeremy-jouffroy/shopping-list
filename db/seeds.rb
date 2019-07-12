# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "deleting all items"
Item.destroy_all

puts "deleting all Lists"
List.destroy_all

puts "deleting users"
User.destroy_all

puts "Creating 2 users"
u = User.new
u.email = "jeremy.jouffroy@gmail.com"
u.password = "123456"
u.save

u2 = User.new
u2.email = "jeremy.jouffroy+2@gmail.com"
u2.password = "123456"
u2.save



puts "Creating 2 lists"
l = List.new
l.list_name = "test list 1"
l.user_id = u.id
l.save

l2 = List.new
l2.list_name = "test list 2"
l2.user_id = u.id
l2.save


puts "Creating 4 items"
i1 = Item.new
i1.item_name = "item 1"
i1.list_id = l.id
i1.save

i2 = Item.new
i2.item_name = "item 2"
i2.list_id = l.id
i2.save


i3 = Item.new
i3.item_name = "item 3"
i3.list_id = l.id
i3.save


i4 = Item.new
i4.item_name = "item 4"
i4.list_id = l2.id
i4.save



