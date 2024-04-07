# frozen_string_literal: true
User.find_each do |user|
  rand(1..5).times do
    document = user.documents.create!(
      document_type: %w[pdf text link].sample,
      content: FFaker::Lorem.paragraph,
      status: rand(0..2)
    )
    document.create_transcription!(
      text: FFaker::Lorem.paragraph
    )
  end
end
