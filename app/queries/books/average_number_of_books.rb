module Books
  class AverageNumber
    def self.call
      Book.minimum(:quantity)
      Book.maximum(:quantity)
      Book.sum(:quantity)
      Book.average(:quantity)
    end
  end
end
