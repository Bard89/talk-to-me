# frozen_string_literal: true

class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = current_user.documents
  end

  def show; end

  def new
    @document = Document.new
  end

  def edit; end

  def create
    @document = Document.new(document_params)
    @document.user = current_user

    if @document.save
      redirect_to @document, notice: t("notice.created", item: "Document")
    else
      render :new, alert: t("notice.error")
    end
  end

  def update
    if @document.update(document_params)
      redirect_to @document, notice: t("notice.updated", item: "Document")
    else
      render :edit, alert: t("notice.error")
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_url, notice: t("flash_messages.success", item: "Document")
  end

  private

  def document_params
    params.require(:document).permit(:title, :document_type, :content, :status)
  end

  def find_document
    @document = Document.find(params[:id])
  end
end
