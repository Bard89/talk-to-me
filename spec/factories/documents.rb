# frozen_string_literal: true

FactoryBot.define do
  factory :document do
    title { FFaker::Lorem.sentence }
    document_type { %w[pdf text link].sample }
    content { FFaker::Lorem.paragraph }
    status { Document::STATUS.sample }
    user
  end
end
