# frozen_string_literal: true

after "development:documents" do
  notify __FILE__

  Document.find_each.with_index do |document, index|
    voice_file_path = Rails.root.join("app", "files", "generated_voices", "#{index}_alloy.mp3")
    voice_attributes = {
      document_id: document.id,
      voice_type: "ai_generated",
      status: "completed"
    }

    unless File.exist?(voice_file_path)
      puts "Voice file not found for document #{index}. Skipping."
      next
    end

    voice_attributes[:audio] = File.binread(voice_file_path)
    seed Voice, { document_id: document.id }, voice_attributes
  end
end