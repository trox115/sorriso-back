require "rails_helper"

RSpec.describe OrcamentoDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/orcamento_details").to route_to("orcamento_details#index")
    end

    it "routes to #new" do
      expect(get: "/orcamento_details/new").to route_to("orcamento_details#new")
    end

    it "routes to #show" do
      expect(get: "/orcamento_details/1").to route_to("orcamento_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/orcamento_details/1/edit").to route_to("orcamento_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/orcamento_details").to route_to("orcamento_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/orcamento_details/1").to route_to("orcamento_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/orcamento_details/1").to route_to("orcamento_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/orcamento_details/1").to route_to("orcamento_details#destroy", id: "1")
    end
  end
end
