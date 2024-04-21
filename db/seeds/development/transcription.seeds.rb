# frozen_string_literal: true

after 'development:users', 'development:documents' do
  notify __FILE__

  Document.find_each do |document|
    seed Transcription,
         { title: "Transcription #{document.title}"},
         { document: document,
           text: document.content }
  end
end
