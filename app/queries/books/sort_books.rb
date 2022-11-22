module Books
  class SortBooksDescending
    def self.call
      Book.order(year: :desc)
    end
  end
end
