require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/authors_books", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AuthorsBook. As you add validations to AuthorsBook, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AuthorsBook.create! valid_attributes
      get authors_books_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      authors_book = AuthorsBook.create! valid_attributes
      get authors_book_url(authors_book)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_authors_book_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      authors_book = AuthorsBook.create! valid_attributes
      get edit_authors_book_url(authors_book)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AuthorsBook" do
        expect {
          post authors_books_url, params: { authors_book: valid_attributes }
        }.to change(AuthorsBook, :count).by(1)
      end

      it "redirects to the created authors_book" do
        post authors_books_url, params: { authors_book: valid_attributes }
        expect(response).to redirect_to(authors_book_url(AuthorsBook.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AuthorsBook" do
        expect {
          post authors_books_url, params: { authors_book: invalid_attributes }
        }.to change(AuthorsBook, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post authors_books_url, params: { authors_book: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested authors_book" do
        authors_book = AuthorsBook.create! valid_attributes
        patch authors_book_url(authors_book), params: { authors_book: new_attributes }
        authors_book.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the authors_book" do
        authors_book = AuthorsBook.create! valid_attributes
        patch authors_book_url(authors_book), params: { authors_book: new_attributes }
        authors_book.reload
        expect(response).to redirect_to(authors_book_url(authors_book))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        authors_book = AuthorsBook.create! valid_attributes
        patch authors_book_url(authors_book), params: { authors_book: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested authors_book" do
      authors_book = AuthorsBook.create! valid_attributes
      expect {
        delete authors_book_url(authors_book)
      }.to change(AuthorsBook, :count).by(-1)
    end

    it "redirects to the authors_books list" do
      authors_book = AuthorsBook.create! valid_attributes
      delete authors_book_url(authors_book)
      expect(response).to redirect_to(authors_books_url)
    end
  end
end
