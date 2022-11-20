module Subscribers
  class FindCountNames
    def self.call
      Subscriber.group(:name).count
    end
  end
end
