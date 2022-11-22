require 'rails_helper'

RSpec.describe "authors_books/index", type: :view do
  before(:each) do
    assign(:authors_books, [
      AuthorsBook.create!(
        book: nil,
        author: nil
      ),
      AuthorsBook.create!(
        book: nil,
        author: nil
      )
    ])
  end

  it "renders a list of authors_books" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
