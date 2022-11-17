# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  describe 'associations' do
    subject { create(:subscriber) }
    it { is_expected.to have_many(:subscriptions) }
    it { is_expected.to have_many(:books).through(:subscriptions) }
  end

  describe 'validations' do
    subject { build(:subscriber) }

    it { is_expected.to validate_presence_of(:name).with_message('must be abided') }
  end
end
