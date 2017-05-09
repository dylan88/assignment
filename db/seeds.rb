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
             
Image.create!(filename: Rails.root.join("public/uploads/image/filename/1/1.jpg").open,
              alt: "training",
              caption: "",
              name: "training")
              
Image.create!(filename: Rails.root.join("public/uploads/image/filename/2/2.jpg").open,
              alt: "training",
              caption: "",
              name: "training")

Image.create!(filename: Rails.root.join("public/uploads/image/filename/3/3.jpg").open,
              alt: "training",
              caption: "",
              name: "training")