# frozen_string_literal: true

# == Schema Information
#
# Table name: transcriptions
#
#  id          :bigint           not null, primary key
#  document_id :integer
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Transcription < ApplicationRecord
  # region Constants
  # endregion

  # region Extensions
  # endregion

  # region Associations
  belongs_to :document
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
