# frozen_string_literal: true

after 'development:users' do
  notify __FILE__

  User.find_each.with_index do |user, index|
    seed Document,
         { title: "Document title #{index}"} ,
         { document_type: %w[pdf text link].sample,
           content: FFaker::Lorem.paragraph,
           status: Document::STATUS.sample,
           user: user }
  end
end
