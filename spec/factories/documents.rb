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
FactoryBot.define do
  factory :document do
    title { Faker::Lorem.sentence }
    document_type { %w[pdf text link].sample }
    content { Faker::Lorem.paragraph }
    status { Document::STATUS.sample }
    user
  end
end
