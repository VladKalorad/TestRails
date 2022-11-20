module Books
  class CountOfBooks
    def self.call
      Book.count(:all)
    end
  end
end
