# frozen_string_literal: true

after 'development:users' do
  notify __FILE__

  User.find_each do |user|
    rand(1..5).times do
      document = user.documents.create!(
        title: FFaker::Name.name,
        document_type: %w[pdf text link].sample,
        content: FFaker::Lorem.paragraph,
        status: rand(0..2)
      )
      document.create_transcription!(
        text: document.content,
      )
      print '.'
    end
  end
end
