require 'rails_helper'

RSpec.describe AuthorBook, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:author) }
  end

  describe 'validations' do

    it { is_expected.to validate_presence_of(:book_id) }
    it { is_expected.to validate_presence_of(:author_id) }
  end
end