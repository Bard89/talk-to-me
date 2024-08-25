# frozen_string_literal: true

require "rails_helper"

RSpec.describe ApplicationController do
  describe "#set_locale" do
    it "sets the locale to the default when no locale param is present" do
      get :index
      expect(I18n.locale).to eq(I18n.default_locale)
    end

    it "sets the locale to the specified locale when locale param is present" do
      get :index, params: { locale: "cs" }
      expect(I18n.locale).to eq(:cs)
    end
  end
end
