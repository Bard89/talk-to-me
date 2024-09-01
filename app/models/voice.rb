# frozen_string_literal: true

# == Schema Information
#
# Table name: voices
#
#  id          :bigint           not null, primary key
#  audio       :binary           not null
#  status      :string
#  voice_type  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  document_id :bigint           not null
#
# Indexes
#
#  index_voices_on_document_id  (document_id)
#
# Foreign Keys
#
#  fk_rails_...  (document_id => documents.id)
#
class Voice < ApplicationRecord
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
