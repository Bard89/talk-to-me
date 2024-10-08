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
require "rails_helper"

RSpec.describe Voice do
  pending "add some examples to (or delete) #{__FILE__}"
end
