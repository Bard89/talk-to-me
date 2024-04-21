# frozen_string_literal: true

notify __FILE__
seed User,
     { email: "sysadmin@talktome.com"},
     { password: '12345678',
       role: 'sysadmin' }

5.times do |index|
  seed User,
       { email: "user#{index}@talktome.com"},
       { password: '12345678' }
end
