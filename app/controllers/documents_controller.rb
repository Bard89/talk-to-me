# frozen_string_literal: true

class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_document, only: %i[show edit update destroy]

  def index
    @documents = current_user.documents.order(created_at: :desc)
  end

  def show; end

  def new
    @document = Document.new
  end

  def edit; end

  def create
    @document = current_user.documents.build(document_params)

    if @document.save
      redirect_to @document, notice: t("notice.created", item: "Document")
    else
      render :new, alert: t("notice.error"), status: :unprocessable_entity
    end
  end

  def update
    if @document.update(document_params)
      redirect_to @document, notice: t("notice.updated", item: "Document")
    else
      render :edit, alert: t("notice.error"), status: :unprocessable_entity
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_url, notice: t("flash_messages.success", item: "Document")
  end

  def text_to_speech
    @document = current_user.documents.find(params[:id])
    audio_content = TextToSpeechService.new(@document.content).convert
    send_data audio_content, type: "audio/mpeg", filename: "#{@document.title}.mp3"
  end

  private

  def document_params
    params.require(:document).permit(:title, :document_type, :content, :status)
  end

  def set_document
    @document = current_user.documents.find(params[:id])
  end
end
