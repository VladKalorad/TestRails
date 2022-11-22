# frozen_string_literal: true

module Books
  class CountOfBooks
    def self.call
      Book.count(:all)
    end
  end
end
