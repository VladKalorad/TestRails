module Subscribers
  class FindAllSubscribers
    def self.call
      @Subscribers = Subscriber.all
    end
  end
end