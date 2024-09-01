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
FactoryBot.define do
  factory :voice do
    document
    audio { Rails.root.join("app/files/generated_voices/1_alloy.mp3").read }
    voice_type { "alloy" }
    status { "completed" }
  end
end
