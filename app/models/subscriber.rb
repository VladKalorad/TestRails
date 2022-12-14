# frozen_string_literal: true

class Subscriber < ApplicationRecord
  has_many :subscriptions

  validates :name, length: { minimum: 2 }
  validates :name, presence: { message: 'must be abided' }
end
