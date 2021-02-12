require "rails_helper"

RSpec.describe DocCategoriaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/doc_categoria").to route_to("doc_categoria#index")
    end

    it "routes to #new" do
      expect(get: "/doc_categoria/new").to route_to("doc_categoria#new")
    end

    it "routes to #show" do
      expect(get: "/doc_categoria/1").to route_to("doc_categoria#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/doc_categoria/1/edit").to route_to("doc_categoria#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/doc_categoria").to route_to("doc_categoria#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/doc_categoria/1").to route_to("doc_categoria#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/doc_categoria/1").to route_to("doc_categoria#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/doc_categoria/1").to route_to("doc_categoria#destroy", id: "1")
    end
  end
end
