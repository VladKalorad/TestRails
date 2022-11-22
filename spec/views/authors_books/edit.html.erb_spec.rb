require 'rails_helper'

RSpec.describe "authors_books/edit", type: :view do
  let(:authors_book) {
    AuthorsBook.create!(
      book: nil,
      author: nil
    )
  }

  before(:each) do
    assign(:authors_book, authors_book)
  end

  it "renders the edit authors_book form" do
    render

    assert_select "form[action=?][method=?]", authors_book_path(authors_book), "post" do

      assert_select "input[name=?]", "authors_book[book_id]"

      assert_select "input[name=?]", "authors_book[author_id]"
    end
  end
end
