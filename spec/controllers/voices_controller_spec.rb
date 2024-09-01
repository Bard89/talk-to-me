# frozen_string_literal: true

require "rails_helper"

RSpec.describe VoicesController, type: "controller" do
  let(:user) { create(:user) }
  let(:document) { create(:document, user:) }
  let(:voice) { create(:voice, document:) }

  before do
    sign_in user
  end

  describe "DELETE #destroy" do
    it "destroys the requested voice" do # rubocop:disable RSpec/ExampleLength
      voice
      expect do
        delete :destroy, params: { document_id: document.id, id: voice.id }
      end.to change(Voice, :count).by(-1)

      expect(response).to redirect_to(document)
      expect(flash[:notice]).to eq(I18n.t("notice.voice.delete.success"))
    end
  end

  describe "GET #download" do
    it "sends the voice audio file" do
      get :download, params: { document_id: document.id, id: voice.id }

      expect(response.body).to eq(voice.audio)
      expect(response.content_type).to eq("audio/mpeg")
      expect(response.headers["Content-Disposition"]).to include("attachment")
      expect(response.headers["Content-Disposition"]).to include("#{document.title}_#{voice.voice_type}.mp3")
    end
  end

  describe "GET #play" do
    it "sends the voice audio file for inline playback" do
      get :play, params: { document_id: document.id, id: voice.id }

      expect(response.body).to eq(voice.audio)
      expect(response.content_type).to eq("audio/mpeg")
      expect(response.headers["Content-Disposition"]).to include("inline")
    end
  end
end
