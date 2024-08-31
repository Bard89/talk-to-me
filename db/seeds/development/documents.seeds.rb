# frozen_string_literal: true

after 'development:users' do
  notify __FILE__

  User.find_each.with_index do |user, i|
    10.times do |j|
      seed Document,
           { title: "Document title #{i * 10 + j}" },
           { document_type: %w[pdf text link].sample,
             content: Faker::Lorem.paragraph,
             status: Document::STATUS.sample,
             user: user }
    end
  end
end
