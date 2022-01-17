# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(username: "sourav", email: "sd@das.com", password: "password", password_confirmation: "password")
# User.create(username: "xman", email: "xmand@das.com", password: "password", password_confirmation: "password")
# User.create(username: "deadpool", email: "deadpool@das.com", password: "password", password_confirmation: "password")
#
msg=Message.all
msg.each do |m|
  m.delete
end