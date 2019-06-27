require 'rails_helper'

RSpec.describe "LogicalPhrases", type: :request do
  describe "GET /logical_phrases" do
    it "works! (now write some real specs)" do
      get logical_phrases_path
      expect(response).to have_http_status(200)
    end
  end
end
