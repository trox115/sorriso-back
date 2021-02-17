require "rails_helper"

RSpec.describe ConsultaDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/consulta_details").to route_to("consulta_details#index")
    end

    it "routes to #new" do
      expect(get: "/consulta_details/new").to route_to("consulta_details#new")
    end

    it "routes to #show" do
      expect(get: "/consulta_details/1").to route_to("consulta_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/consulta_details/1/edit").to route_to("consulta_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/consulta_details").to route_to("consulta_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/consulta_details/1").to route_to("consulta_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/consulta_details/1").to route_to("consulta_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/consulta_details/1").to route_to("consulta_details#destroy", id: "1")
    end
  end
end
