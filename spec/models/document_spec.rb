# frozen_string_literal: true

require "rails_helper"

RSpec.describe Document do
  let(:user) { create(:user) }

  describe "validations" do
    it "is valid with valid attributes" do
      document = build(:document, user:)
      expect(document).to be_valid
    end

    it "is not valid without a user" do
      document = build(:document, user: nil)
      expect(document).not_to be_valid
    end
  end

  describe "default values" do
    it "has a default status of pending" do
      document = described_class.new
      expect(document.status).to eq("pending")
    end
  end

  describe "status predicates" do
    it "responds to status predicates" do
      document = described_class.new
      Document::STATUS.each do |status|
        expect(document).to respond_to("#{status}?")
      end
    end
  end
end
