# frozen_string_literal: true

def notify(filename)
  base = filename.split('db/seeds/').last
  group = base.split('/').first.humanize
  file = File.basename(base, '.seeds.rb').humanize
  puts "Seeding #{file} from #{group} group"
end
