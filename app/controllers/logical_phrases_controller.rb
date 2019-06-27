class LogicalPhrasesController < ApplicationController
  before_action :set_logical_phrase, only: [:show, :update, :destroy]

  # GET /logical_phrases
  def index
    @logical_phrases = LogicalPhrase.all

    render json: @logical_phrases
  end

  # GET /logical_phrases/1
  def show
    render json: @logical_phrase
  end

  # POST /logical_phrases
  def create
    @logical_phrase = LogicalPhrase.new(logical_phrase_params)

    if @logical_phrase.save
      render json: @logical_phrase, status: :created, location: @logical_phrase
    else
      render json: @logical_phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logical_phrases/1
  def update
    if @logical_phrase.update(logical_phrase_params)
      render json: @logical_phrase
    else
      render json: @logical_phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logical_phrases/1
  def destroy
    @logical_phrase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logical_phrase
      @logical_phrase = LogicalPhrase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def logical_phrase_params
      params.require(:logical_phrase).permit(:phrase)
    end
end
