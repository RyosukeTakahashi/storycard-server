class StoryPhrasesController < ApplicationController
  before_action :set_story_phrase, only: [:show, :update, :destroy]

  # GET /story_phrases
  def index
    @story_phrases = StoryPhrase.all

    render json: @story_phrases
  end

  # GET /story_phrases/1
  def show
    render json: @story_phrase
  end

  # POST /story_phrases
  def create
    @story_phrase = LogicalPhrase.new(story_phrase_params)

    if @story_phrase.save
      render json: @story_phrase, status: :created, location: @story_phrase
    else
      render json: @story_phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /story_phrases/1
  def update
    if @story_phrase.update(story_phrase_params)
      render json: {status: "Update succeeded.", deleted: @story_phrase}
    else
      render json: @story_phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /story_phrases/1
  def destroy
    if @story_phrase.destroy
      render json: {status: "Deletion succeeded.", deleted: @story_phrase}
    else
      render json: @story_phrase.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_phrase
      @story_phrase = StoryPhrase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_phrase_params
      params.require(:story_phrase).permit(:phrase)
    end
end
