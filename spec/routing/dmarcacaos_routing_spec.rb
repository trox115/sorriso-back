require "rails_helper"

RSpec.describe DmarcacaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dmarcacaos").to route_to("dmarcacaos#index")
    end

    it "routes to #new" do
      expect(get: "/dmarcacaos/new").to route_to("dmarcacaos#new")
    end

    it "routes to #show" do
      expect(get: "/dmarcacaos/1").to route_to("dmarcacaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dmarcacaos/1/edit").to route_to("dmarcacaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dmarcacaos").to route_to("dmarcacaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dmarcacaos/1").to route_to("dmarcacaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dmarcacaos/1").to route_to("dmarcacaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dmarcacaos/1").to route_to("dmarcacaos#destroy", id: "1")
    end
  end
end
