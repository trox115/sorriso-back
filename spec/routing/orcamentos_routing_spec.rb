require "rails_helper"

RSpec.describe OrcamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/orcamentos").to route_to("orcamentos#index")
    end

    it "routes to #new" do
      expect(get: "/orcamentos/new").to route_to("orcamentos#new")
    end

    it "routes to #show" do
      expect(get: "/orcamentos/1").to route_to("orcamentos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/orcamentos/1/edit").to route_to("orcamentos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/orcamentos").to route_to("orcamentos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/orcamentos/1").to route_to("orcamentos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/orcamentos/1").to route_to("orcamentos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/orcamentos/1").to route_to("orcamentos#destroy", id: "1")
    end
  end
end
