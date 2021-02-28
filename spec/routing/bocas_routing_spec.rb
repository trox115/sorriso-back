require "rails_helper"

RSpec.describe BocasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bocas").to route_to("bocas#index")
    end

    it "routes to #new" do
      expect(get: "/bocas/new").to route_to("bocas#new")
    end

    it "routes to #show" do
      expect(get: "/bocas/1").to route_to("bocas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bocas/1/edit").to route_to("bocas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bocas").to route_to("bocas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bocas/1").to route_to("bocas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bocas/1").to route_to("bocas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bocas/1").to route_to("bocas#destroy", id: "1")
    end
  end
end
