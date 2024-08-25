# frozen_string_literal: true

require "openai"

# class to convert text to speech
class TextToSpeechService
  def initialize(text)
    @text = text
    @client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_API_KEY", nil))
  end

  def convert
    response = @client.audio.speech(
      parameters: {
        model: "tts-1",
        input: @text,
        voice: "alloy"
      }
    )

    response.body
  end
end
