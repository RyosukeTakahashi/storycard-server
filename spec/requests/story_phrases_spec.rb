require 'rails_helper'

RSpec.describe "StoryPhrases", type: :request do
  describe "GET /story_phrases" do
    it "works! (now write some real specs)" do
      get story_phrases_path
      expect(response).to have_http_status(200)
    end
  end
end
