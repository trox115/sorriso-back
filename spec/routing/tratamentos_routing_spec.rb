require "rails_helper"

RSpec.describe TratamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tratamentos").to route_to("tratamentos#index")
    end

    it "routes to #new" do
      expect(get: "/tratamentos/new").to route_to("tratamentos#new")
    end

    it "routes to #show" do
      expect(get: "/tratamentos/1").to route_to("tratamentos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tratamentos/1/edit").to route_to("tratamentos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tratamentos").to route_to("tratamentos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tratamentos/1").to route_to("tratamentos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tratamentos/1").to route_to("tratamentos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tratamentos/1").to route_to("tratamentos#destroy", id: "1")
    end
  end
end
