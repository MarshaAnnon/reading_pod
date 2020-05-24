# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: Faker::Name.name, professional_field: Faker::Job.field, bio: Faker::Lorem.sentence(word_count: 50), email: Faker::Internet.email, password: "password")
User.create(name: Faker::Name.name, professional_field: Faker::Job.field, bio: Faker::Lorem.sentence(word_count: 50), email: Faker::Internet.email, password: "password")
User.create(name: Faker::Name.name, professional_field: Faker::Job.field, bio: Faker::Lorem.sentence(word_count: 50), email: Faker::Internet.email, password: "password")
User.create(name: Faker::Name.name, professional_field: Faker::Job.field, bio: Faker::Lorem.sentence(word_count: 50), email: Faker::Internet.email, password: "password")
User.create(name: Faker::Name.name, professional_field: Faker::Job.field, bio: Faker::Lorem.sentence(word_count: 50), email: Faker::Internet.email, password: "password")

Book.create(title: Faker::Book.title, author: Faker::Book.author, author_bio: Faker::Lorem.sentence(word_count: 50), book_summary: Faker::Lorem.sentence(word_count: 50)
Book.create(title: Faker::Book.title, author: Faker::Book.author, author_bio: Faker::Lorem.sentence(word_count: 50), book_summary: Faker::Lorem.sentence(word_count: 50)
Book.create(title: Faker::Book.title, author: Faker::Book.author, author_bio: Faker::Lorem.sentence(word_count: 50), book_summary: Faker::Lorem.sentence(word_count: 50)
Book.create(title: Faker::Book.title, author: Faker::Book.author, author_bio: Faker::Lorem.sentence(word_count: 50), book_summary: Faker::Lorem.sentence(word_count: 50)
Book.create(title: Faker::Book.title, author: Faker::Book.author, author_bio: Faker::Lorem.sentence(word_count: 50), book_summary: Faker::Lorem.sentence(word_count: 50)

Pod.create(name: Faker::GreekPhilosophers.name, current_book: Faker::Book.title)
Pod.create(name: Faker::GreekPhilosophers.name, current_book: Faker::Book.title)
Pod.create(name: Faker::GreekPhilosophers.name, current_book: Faker::Book.title)
Pod.create(name: Faker::GreekPhilosophers.name, current_book: Faker::Book.title)
Pod.create(name: Faker::GreekPhilosophers.name, current_book: Faker::Book.title)

Category.create(category: Faker::Job.field)
Category.create(category: Faker::Job.field)
Category.create(category: Faker::Job.field)
Category.create(category: Faker::Job.field)
Category.create(category: Faker::Job.field)


