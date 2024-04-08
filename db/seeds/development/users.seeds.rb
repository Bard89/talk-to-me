# frozen_string_literal: true

notify __FILE__
seed User,
  email: "info@talktome.com",
  password: '12345678',
  role: 'sysadmin'

5.times do
  seed User,
    email: FFaker::Internet.email,
    password: '12345678'
end
