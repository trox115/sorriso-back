require "rails_helper"

RSpec.describe DentesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dentes").to route_to("dentes#index")
    end

    it "routes to #new" do
      expect(get: "/dentes/new").to route_to("dentes#new")
    end

    it "routes to #show" do
      expect(get: "/dentes/1").to route_to("dentes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dentes/1/edit").to route_to("dentes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dentes").to route_to("dentes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dentes/1").to route_to("dentes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dentes/1").to route_to("dentes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dentes/1").to route_to("dentes#destroy", id: "1")
    end
  end
end
