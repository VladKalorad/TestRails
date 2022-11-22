require "rails_helper"

RSpec.describe AuthorsBooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authors_books").to route_to("authors_books#index")
    end

    it "routes to #new" do
      expect(get: "/authors_books/new").to route_to("authors_books#new")
    end

    it "routes to #show" do
      expect(get: "/authors_books/1").to route_to("authors_books#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authors_books/1/edit").to route_to("authors_books#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authors_books").to route_to("authors_books#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authors_books/1").to route_to("authors_books#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authors_books/1").to route_to("authors_books#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authors_books/1").to route_to("authors_books#destroy", id: "1")
    end
  end
end
