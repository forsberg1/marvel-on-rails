puts "Loading marvel_config.yml with enviroment: #{Rails.env}"

MARVEL_CONFIG= YAML.load(ERB.new(File.read("#{Rails.root}/config/marvel_config.yml")).result)[Rails.env]

puts "Config loaded"
