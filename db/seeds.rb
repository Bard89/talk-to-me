# db/seeds.rb

# seed_files_dir = Rails.root.join('db', 'seeds')
# seed_files = Dir[seed_files_dir.join('*.rb')]
#
# seed_files.each do |file|
#   load file
#   puts "Loaded #{file}"
# end

load Rails.root.join('db', 'development', 'users.seeds.rb')
load Rails.root.join('db', 'development', 'documents.seeds.rb')
