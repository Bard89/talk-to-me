# frozen_string_literal: true

FactoryBot.define do
  factory :voice do
    document { nil }
    audio { "" }
    voice_type { "MyString" }
    status { "MyString" }
  end
end
