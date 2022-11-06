# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AuthorBook.delete_all

BooksGenre.delete_all

Subscription.delete_all

Author.delete_all

Genre.delete_all

Book.delete_all

Subscriber.delete_all

Subscription.delete_all



(0..10).each{|genre| Genre.create!(name: "genre #{genre}")}
genres = Genre.all


(0..10).each{|author| Author.create!(name: "author #{author}")}
authors = Author.all


(0..100).each{|book| Book.create!(name: "book #{book}", year: rand(1999..2022), quantity: rand(0..100))}
books = Book.all


(0..10).each{|subscriber| Subscriber.create!(name: "subscriber #{subscriber}")}
subscribers = Subscriber.all


(0..10).each{|subscriber| Subscriber.create!(name: "subscriber #{subscriber}")}


Subscription.create(subscriber: subscribers[rand(0..10)], book: books[rand(0..100)], is_active: [true,false].sample, deleted_at: Date.new(rand(1000.2022),rand(1..12),rand(1..28)))