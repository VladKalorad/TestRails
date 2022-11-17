# frozen_string_literal: true

json.array! @author_books, partial: 'author_books/author_book', as: :author_book
