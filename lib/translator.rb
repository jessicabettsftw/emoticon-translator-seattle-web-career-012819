# require modules here
require "yaml"

def load_library(file)
  emotes = YAML.load_file(file)
  emotes_hash = { "get_meaning" => {},
                  "get_emoticon" => {}
  }
  emotes.each do |info|
    puts
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end