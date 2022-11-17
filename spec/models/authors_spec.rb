# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'associations' do
    subject { create(:author) }
    it { is_expected.to have_many(:author_books) }
    it { is_expected.to have_many(:books).through(:author_books) }
  end

  describe 'validations' do
    subject { build(:author) }

    it { is_expected.to validate_uniqueness_of(:name).with_message('must be added') }
  end
end
