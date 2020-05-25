10.times do
User.create(
    name: Faker::Name.name, 
    professional_field: Faker::Job.field, 
    bio: Faker::Lorem.sentence(word_count: 50), 
    email: Faker::Internet.email, 
    password: "password"
    )

Book.create(
    title: Faker::Book.title, 
    author: Faker::Book.author, 
    author_bio: Faker::Lorem.sentence(word_count: 50), 
    book_summary: Faker::Lorem.sentence(word_count: 50)
    )

Pod.create(
    pod_name: Faker::GreekPhilosophers.name, 
    current_book: Faker::Book.title
    )

Category.create(
    name: Faker::Job.field
    )
end