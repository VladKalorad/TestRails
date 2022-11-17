require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    subject { create(:subscription) }
    it { is_expected.to belong_to(:subscriber) }
    it { is_expected.to belong_to(:book) }
  end
end