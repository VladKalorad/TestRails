class Subscriber < ApplicationRecord
  has_many :subscriptions
  has_many :book, through: :subscriptions
  
  validates :name, length: {minimum: 2}
  
end
