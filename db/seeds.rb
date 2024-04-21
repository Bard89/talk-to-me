# frozen_string_literal: true

def notify(filename)
  base = filename.split('db/seeds/').last
  group = base.split('/').first.humanize
  file = File.basename(base, '.seeds.rb').humanize
  puts
  puts "Seeding #{file} from #{group} group"
end

def seed(model, find_or_create_by, update_with)
  model.find_or_create_by!(find_or_create_by) do |record|
    record.update!(update_with)
  end
end
