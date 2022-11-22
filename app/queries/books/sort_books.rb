# frozen_string_literal: true

module Books
  class SortBooksDescending
    def self.call
      Book.order(year: :desc)
    end
  end
end
