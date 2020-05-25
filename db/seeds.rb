# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movy = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movy.first)

10.times do
User.create(
    name: Faker::Name.name, 
    professional_field: Faker::Job.field, 
    bio: Faker::Lorem.sentence(word_count: 50), 
    email: Faker::Internet.email, 
    password: "password"
    )
end

10.times do
Book.create(
    byebug
    title: Faker::Book.title, 
    author: Faker::Book.author, 
    author_bio: Faker::Lorem.sentence(word_count: 50), 
    book_summary: Faker::Lorem.sentence(word_count: 50)
    )
end

10.times do
    Pod.create(
    pod_name: Faker::GreekPhilosophers.name, 
    current_book: Faker::Book.title
    )
end

10.times do
    Category.create(
    name: Faker::Job.field
    )
end