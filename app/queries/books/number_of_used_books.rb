# frozen_string_literal: true

module Books
  class UsedBooks
    def self.call
      Subscription.where(is_active: true).count
    end
  end
end
