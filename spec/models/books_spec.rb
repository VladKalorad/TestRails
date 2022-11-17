require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
    let(:book) { create :book, :with_genres}
    it { is_expected.to have_many(:books_genres) }
    it { is_expected.to have_many(:genres).through(:books_genres) }
    it { is_expected.to have_many(:author_books) }
    it { is_expected.to have_many(:authors).through(:author_books) }
  end

  describe 'validations' do
    subject { build(:book) }

    it { is_expected.to validate_uniqueness_of(:name).with_message('unique') }
  end
end