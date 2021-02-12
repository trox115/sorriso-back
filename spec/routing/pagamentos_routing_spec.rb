require "rails_helper"

RSpec.describe PagamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pagamentos").to route_to("pagamentos#index")
    end

    it "routes to #new" do
      expect(get: "/pagamentos/new").to route_to("pagamentos#new")
    end

    it "routes to #show" do
      expect(get: "/pagamentos/1").to route_to("pagamentos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pagamentos/1/edit").to route_to("pagamentos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pagamentos").to route_to("pagamentos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pagamentos/1").to route_to("pagamentos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pagamentos/1").to route_to("pagamentos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pagamentos/1").to route_to("pagamentos#destroy", id: "1")
    end
  end
end
