# frozen_string_literal: true

json.extract! subscription, :id, :subscriber_id, :book_id, :deleted_at, :is_active, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
