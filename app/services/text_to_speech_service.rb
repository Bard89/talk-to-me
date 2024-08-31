# frozen_string_literal: true

require "openai"

# Service to convert text to speech
class TextToSpeechService
  def initialize(document, voice_type = "alloy")
    @document = document
    @voice_type = voice_type
    @client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_API_KEY", nil))
  end

  def convert
    response = @client.audio.speech(
      parameters: {
        model: "tts-1",
        input: @document.content,
        voice: @voice_type
      }
    )

    Voice.create!(
      document: @document,
      audio: response,
      voice_type: @voice_type,
      status: "completed"
    )
  rescue StandardError => e
    Rails.logger.error "Error in TextToSpeechService: #{e.message}"
    Voice.create(
      document: @document,
      voice_type: @voice_type,
      status: "failed"
    )
  end
end
