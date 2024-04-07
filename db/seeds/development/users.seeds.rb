# frozen_string_literal: true

puts 'Seeding Users'

5.times do
  User.create!(
    email: FFaker::Internet.email,
    password: '12345678',
  )
  print '.'
end
