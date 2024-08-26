# frozen_string_literal: true

class VoicesController < ApplicationController
  before_action :set_document
  before_action :set_voice, only: %i[show destroy]

  def index
    @voices = @document.voices
  end

  def show
    send_data @voice.audio, type: "audio/mpeg", filename: "#{@document.title}_#{@voice.voice_type}.mp3"
  end

  def create
    TextToSpeechService.new(@document).convert
    redirect_to @document, notice: t("notice.voice.generate.success")
  end

  def destroy
    @voice.destroy
    redirect_to @document, notice: t("notice.voice.delete.success")
  end

  private

  def set_document
    @document = current_user.documents.find(params[:document_id])
  end

  def set_voice
    @voice = @document.voices.find(params[:id])
  end
end
