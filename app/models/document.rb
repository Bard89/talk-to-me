# frozen_string_literal: true

# == Schema Information
#
# Table name: documents
#
#  id            :bigint           not null, primary key
#  user_id       :integer
#  title         :string
#  document_type :string
#  content       :text
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Document < ApplicationRecord
  # region Constants
  STATUS = %w[pending processing completed failed].freeze
  # endregion

  # region Extensions
  extend Enumerize
  # endregion

  # region Associations
  belongs_to :user
  has_many :voices, dependent: :destroy
  # endregion

  # region Attribute macros
  enumerize :status, in: STATUS, default: :pending, predicates: true, scope: true
  # endregion

  # region Scopes
  # endregion

  # region Validations
  # endregion

  # region Callback
  # endregion

  def text_to_speech_url
    Rails.application.routes.url_helpers.text_to_speech_document_path(self)
  end
end
