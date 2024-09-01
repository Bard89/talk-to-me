# frozen_string_literal: true

# == Schema Information
#
# Table name: documents
#
#  id            :bigint           not null, primary key
#  content       :text
#  document_type :string
#  status        :string
#  title         :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
# Indexes
#
#  index_documents_on_user_id  (user_id)
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
end
