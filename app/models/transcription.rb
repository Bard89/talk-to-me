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
end
