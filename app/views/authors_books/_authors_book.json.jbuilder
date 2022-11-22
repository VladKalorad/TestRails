json.extract! authors_book, :id, :book_id, :author_id, :created_at, :updated_at
json.url authors_book_url(authors_book, format: :json)
