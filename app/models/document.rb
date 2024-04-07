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
  has_one :transcription, dependent: :destroy
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
end
