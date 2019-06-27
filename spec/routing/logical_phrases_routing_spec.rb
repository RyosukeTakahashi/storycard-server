require "rails_helper"

RSpec.describe LogicalPhrasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/logical_phrases").to route_to("logical_phrases#index")
    end

    it "routes to #show" do
      expect(:get => "/logical_phrases/1").to route_to("logical_phrases#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/logical_phrases").to route_to("logical_phrases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/logical_phrases/1").to route_to("logical_phrases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/logical_phrases/1").to route_to("logical_phrases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/logical_phrases/1").to route_to("logical_phrases#destroy", :id => "1")
    end
  end
end
