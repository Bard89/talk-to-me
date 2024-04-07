# frozen_string_literal: true

5.times do
  User.create!(
    email: FFaker::Internet.email,
    password: '12345678',
  )
end
