require 'rails_helper'

RSpec.describe "authors_books/new", type: :view do
  before(:each) do
    assign(:authors_book, AuthorsBook.new(
      book: nil,
      author: nil
    ))
  end

  it "renders new authors_book form" do
    render

    assert_select "form[action=?][method=?]", authors_books_path, "post" do

      assert_select "input[name=?]", "authors_book[book_id]"

      assert_select "input[name=?]", "authors_book[author_id]"
    end
  end
end
