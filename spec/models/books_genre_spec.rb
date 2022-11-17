# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksGenre, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:genre) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:book_id) }
    it { is_expected.to validate_presence_of(:genre_id) }
  end
end
