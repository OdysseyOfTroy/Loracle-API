require "rails_helper"

RSpec.describe IdentifiersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/identifiers").to route_to("identifiers#index")
    end

    it "routes to #show" do
      expect(get: "/identifiers/1").to route_to("identifiers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/identifiers").to route_to("identifiers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/identifiers/1").to route_to("identifiers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/identifiers/1").to route_to("identifiers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/identifiers/1").to route_to("identifiers#destroy", id: "1")
    end
  end
end
