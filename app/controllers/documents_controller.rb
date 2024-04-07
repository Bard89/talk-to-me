# frozen_string_literal: true

class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = current_user.documents
  end

  def show; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end
end
