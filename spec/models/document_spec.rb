# frozen_string_literal: true

# == Schema Information
#
# Table name: documents
#
#  id            :bigint           not null, primary key
#  content       :text
#  document_type :string
#  status        :string
#  title         :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
# Indexes
#
#  index_documents_on_user_id  (user_id)
#
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
