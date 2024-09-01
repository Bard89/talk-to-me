# frozen_string_literal: true

class VoicesController < ApplicationController
  before_action :set_document
  before_action :set_voice, only: %i[destroy download play]

  def download
    if @voice&.audio
      send_data @voice.audio, type: "audio/mpeg", filename: "#{@document.title}_#{@voice.voice_type}.mp3",
                              disposition: "attachment"
    else
      redirect_to @document, alert: t("notice.voice.download.error")
    end
  end

  def play
    if @voice&.audio
      send_data @voice.audio, type: "audio/mpeg", disposition: "inline"
    else
      redirect_to @document, alert: t("notice.voice.play.error")
    end
  end

  def create
    voice = TextToSpeechService.new(@document).convert
    if voice.persisted?
      redirect_to @document, notice: t("notice.voice.generate.success")
    else
      redirect_to @document, alert: t("notice.voice.generate.error")
    end
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
