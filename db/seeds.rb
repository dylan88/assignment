# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Admin",
             email: "root@root.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
             
Course.create!(name: "Yoga",
                instructor: "Melissa",
                description: "Learn to relax with one of the best teachers in western Europe ! ",
                start_date: "18-05-2017",
                hour: "17:00:00",
                day: 4)
                