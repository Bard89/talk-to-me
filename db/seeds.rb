# frozen_string_literal: true

def notify(filename)
  base = filename.split('db/seeds/').last
  group = base.split('/').first.humanize
  file = File.basename(base, '.seeds.rb').humanize
  puts
  puts "Seeding #{file} from #{group} group"
end

def seed(model, attributes)
  model.create!(attributes)
  print '.'
end
