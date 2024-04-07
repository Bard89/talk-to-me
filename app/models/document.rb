# frozen_string_literal: true

# == Schema Information
#
# Table name: documents
#
#  id            :bigint           not null, primary key
#  user_id       :integer
#  document_type :string
#  content       :text
#  status        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Document < ApplicationRecord
  # region Constants
  # endregion

  # region Extensions
  # endregion

  # region Associations
  belongs_to :user
  has_one :transcription, dependent: :destroy
  # endregion

  # region Attribute macros
  # endregion

  # region Scopes
  # endregion

  # region Validations
  # endregion

  # region Callback
  # endregion
end
