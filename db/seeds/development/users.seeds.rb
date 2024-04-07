# frozen_string_literal: true

notify __FILE__
User.create!(
  email: "info@talktome.com",
  password: '12345678',
  role: :sysadmin
)
print '.'

5.times do
  User.create!(
    email: FFaker::Internet.email,
    password: '12345678',
  )
  print '.'
end
