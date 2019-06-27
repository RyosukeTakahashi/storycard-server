require "rails_helper"

RSpec.describe StoryPhrasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/story_phrases").to route_to("story_phrases#index")
    end

    it "routes to #show" do
      expect(:get => "/story_phrases/1").to route_to("story_phrases#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/story_phrases").to route_to("story_phrases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/story_phrases/1").to route_to("story_phrases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/story_phrases/1").to route_to("story_phrases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/story_phrases/1").to route_to("story_phrases#destroy", :id => "1")
    end
  end
end
